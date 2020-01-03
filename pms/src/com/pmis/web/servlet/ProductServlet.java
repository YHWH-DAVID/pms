package com.pmis.web.servlet;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pmis.domain.Product;
import com.pmis.query.PageResult;
import com.pmis.query.ProductQueryObject;
import com.pmis.service.IProductService;
import com.pmis.service.impl.ProductServiceImpl;

@WebServlet(name = "product", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IProductService service = new ProductServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String cmd = req.getParameter("cmd");
		if ("delete".equals(cmd)) {
			delete(req, res);
		} else if ("saveORupdate".equals(cmd)) {
			saveORupdate(req, res);
		} else if ("input".equals(cmd)) {
			input(req, res);
		} else {
			list(req, res);
		}
	}

	private void list(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String currentPage = req.getParameter("currentPage");
		String pageSize = req.getParameter("pageSize");
		String keyWord = req.getParameter("keyWord");
		String minSalePrice = req.getParameter("minSalePrice");
		String maxSalePrice = req.getParameter("maxSalePrice");
		ProductQueryObject qo = new ProductQueryObject();
		if (hasLength(currentPage)) {
			qo.setCurrentPage(Integer.valueOf(currentPage));
		}
		if (hasLength(pageSize)) {
			qo.setPageSize(Integer.valueOf(pageSize));
		}
		if (hasLength(keyWord)) {
			qo.setKeyWord(keyWord);
		}
		if (hasLength(minSalePrice)) {
			qo.setMinSalePrice(new BigDecimal(minSalePrice));
		}
		if (hasLength(maxSalePrice)) {
			qo.setMaxSalePrice(new BigDecimal(maxSalePrice));
		}
		req.setAttribute("qo", qo);
		PageResult result = service.queryForList(qo);
		req.setAttribute("result", result);
		req.getRequestDispatcher("/WEB-INF/views/list.jsp").forward(req, res);
	}
	//输入页面
		private void input(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String id = req.getParameter("id");
			//判断是更改还是插入
			if (hasLength(id)) {
				Product product = service.get(Long.valueOf(id));
				req.setAttribute("p", product);
				req.getRequestDispatcher("/WEB-INF/views/input.jsp").forward(req, res);
			} else {
				req.getRequestDispatcher("/WEB-INF/views/input.jsp").forward(req, res);
			}
		}
	//更改或者插入操作
		private void saveORupdate(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String id = req.getParameter("id");
			System.out.println("当前id:"+id);
			String productName = req.getParameter("productName");
			String dirId = req.getParameter("dirId");
			String salePrice = req.getParameter("salePrice");
			String supplier = req.getParameter("supplier");
			String brand = req.getParameter("brand");
			String cutoff = req.getParameter("cutoff");
			String costPrice = req.getParameter("costPrice");
			Product p = new Product();
			p.setProductName(productName);
			p.setBrand(brand);
			p.setSupplier(supplier);
			if (hasLength(dirId)) {
				p.setDirId(Long.valueOf(dirId));
			}
			if (hasLength(salePrice)) {
				p.setSalePrice(new BigDecimal(salePrice));
			}
			if (hasLength(cutoff)) {
				p.setCutoff(new BigDecimal(cutoff));
			}
			if (hasLength(costPrice)) {
				p.setCostPrice(new BigDecimal(costPrice));
			}
			//根据id执行不同操作
			if (hasLength(id)) {
				p.setId(Long.valueOf(id));
				System.out.println("执行更新操作");
				System.out.println(p);
				service.update(p);
			} else {
				System.out.println("执行插入操作");
				System.out.println(p);
				service.save(p);
			}
			res.sendRedirect("/product");
		}

		//删除
		private void delete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			Long id = Long.valueOf(req.getParameter("id"));
			service.delete(id);
			res.sendRedirect("/product");
		}

	private boolean hasLength(String str) {
		return str != null && !"".equals(str.trim());
	}
}
