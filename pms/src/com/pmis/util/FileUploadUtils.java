package com.pmis.util;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

public class FileUploadUtils {
	private FileUploadUtils() {
	}

	public static Map<String,Object> upload(HttpServletRequest req) {
		Map<String,Object> map=new HashMap<>();
		try {
			// 创建FileItem对象工厂
			FileItemFactory factory = new DiskFileItemFactory();
			// 创建文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 设置允许的单个文件的大小
			//upload.setFileSizeMax(1024 * 10);
			// 设置一次请求中的
			// 解析请求中的额数据 将每个表单元素相关的数据封装在一个个FileItem对象中
			List<FileItem> items = upload.parseRequest(req);
			for (FileItem fileItem : items) {
				if (fileItem.isFormField()) {
					// 为true表示普通表单元素(关心值)
					String value = fileItem.getString("UTF-8");
					map.put(fileItem.getFieldName(),fileItem.getString("UTF-8"));
				} else {
					// 约束文件的类型
//					// fileItem.getContentType()----->image/jpeg
					if (!fileItem.getContentType().startsWith("image/")) {
						// 添加错误信息
						throw new LogicException("亲,文件格式不正确");
					}
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
					map.put("picPath", "/upload/"+filename);
				}
			}
		} catch (LogicException e) {
			throw e;
		} catch (FileSizeLimitExceededException e) {
			throw new LogicException("亲,大小超过限制", e);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;

	}

}
