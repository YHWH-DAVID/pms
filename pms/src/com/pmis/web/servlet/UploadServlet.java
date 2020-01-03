package com.pmis.web.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
@WebServlet("/upload")
public class UploadServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			// 当请求不是以mutipart/form-data 时 不执行
			boolean isMutipart = ServletFileUpload.isMultipartContent(req);
			if (!isMutipart) {
				return;
			}
			// 创建FileItem对象工厂
			FileItemFactory factory = new DiskFileItemFactory();

			// 创建文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			//设置允许的单个文件的大小
			upload.setFileSizeMax(1024*10);
			//设置一次请求中的
			// 解析请求中的额数据 将每个表单元素相关的数据封装在一个个FileItem对象中
			List<FileItem> items = upload.parseRequest(req);
			for (FileItem fileItem : items) {
				if (fileItem.isFormField()) {
					// 为true表示普通表单元素(关心值)
					String value = fileItem.getString("UTF-8");
					System.out.println(value);
				} else {
					//约束文件的类型 
					//fileItem.getContentType()----->image/jpeg
//					if(!fileItem.getContentType().startsWith("image/")){
//						//添加错误信息
//						req.setAttribute("errorMsg", "亲,上传文件类型不正确");
//						req.getRequestDispatcher("/fileup.jsp").forward(req, res);
//						return;
//					}
					// 表示上传表单元素(关心文件的数据)
					// 将文件保存到磁盘中
					// 生成一个不重复的文件名称
					String name = UUID.randomUUID().toString();
					// 获取文件的拓展名 xxx.jpg
					String extension = FilenameUtils.getExtension(fileItem.getName());
					String filename = name + "." + extension;
					// 文件保存位置应当使用相对路径
					String path = req.getServletContext().getRealPath("/upload");
					fileItem.write(new File(path, filename));
				}
			}
		} catch (FileSizeLimitExceededException e) {
			//如果文件超过了指定大小 异常
			e.printStackTrace(); 
			req.setAttribute("errorMsg", "亲,上传文件大小超过限制");
			req.getRequestDispatcher("/fileup.jsp").forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();    
		}
		
	}

}
