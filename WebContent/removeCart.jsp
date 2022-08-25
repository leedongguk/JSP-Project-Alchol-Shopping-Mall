<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product.jsp");
		return;
	}

	AlcholRepository dao = AlcholRepository.getInstance();
	
	Alchol alchol = dao.getId(id);
	if (alchol == null) {
		response.sendRedirect("ErrorPage.jsp");
	}

	ArrayList<Alchol> cartList = (ArrayList<Alchol>) session.getAttribute("cartlist");
	Alchol goodsQnt = new Alchol();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
