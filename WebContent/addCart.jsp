<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Alchol"%>
<%@ page import="dao.AlcholRepository"%>
<%@ page errorPage="ErrorPage.jsp"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("productview.jsp");
		return;
	}

	AlcholRepository dao = AlcholRepository.getInstance();

	Alchol alchol = dao.getAlcholById(id);
	if (alchol == null) {
		response.sendRedirect("ErrorPage.jsp");
	}

	ArrayList<Alchol> goodsList = dao.getAllAlchols();
	Alchol goods = new Alchol();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Alchol> list = (ArrayList<Alchol>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Alchol>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Alchol goodsQnt = new Alchol();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("productview.jsp?id=" + id);
%>