<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AlunoDAO"%>
<%@ page import="dao.AlunoDAOImplMysql"%>
<%@ page import="model.Aluno"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro aluno</title>
</head>


<body>

	<h2>Cadastrando Novo Aluno</h2>
	

	<form action="<%=request.getContextPath()%>/AlunoServlet" method="get">
	<br>
	  <input type="hidden" name="acao" value="insert_aluno">
	  RA: 
	  <input type="text" name="ra"><p>
	  Nome: 
	  <input type="text" name="nome"><p>
	  Endereco: 
	  <input type="text" name="endereco"><p>
	  Telefone: 
	  <input type="text" name="telefone"><p>
	  Data nascimento: 
	  <input type="text" name="data_nascimento"><p>
	  
	  <input type="submit" value="Salvar alterações">
	  <a href="<%=request.getContextPath()%>/AlunoServlet">Voltar</a>
	</form> 

</body>
</html>