<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar aluno</title>
	
	<style type="text/css">
		div{ margin: 30px; }
	</style>
</head>


<body>

	<div>
		<h2>Editando Dados do Aluno</h2>
		
		<%
			String ra = request.getAttribute("ra").toString();
			String nome = request.getAttribute("nome").toString();
			String endereco = request.getAttribute("endereco").toString();
			String telefone = request.getAttribute("telefone").toString();
			String dataNascimento = request.getAttribute("data_nascimento").toString();
	
		%>
	
		<form action="<%=request.getContextPath()%>/AlunoServlet" method="get">
		<br>
		  <input type="hidden" name="acao" value="update_aluno">
		  RA: 
		  <input type="text" name="ra" value="<%=ra %>"><p>
		  Nome: 
		  <input type="text" name="nome" value="<%=nome %>"><p>
		  Endereco: 
		  <input type="text" name="endereco" value="<%=endereco %>"><p>
		  Telefone: 
		  <input type="text" name="telefone" value="<%=telefone %>"><p>
		  Data nascimento: 
		  <input type="text" name="data_nascimento" value="<%=dataNascimento %>"><p>
		  
		  <input type="submit" value="Salvar alterações">
		  <a href="<%=request.getContextPath()%>/AlunoServlet">Voltar</a>
		</form> 
	</div>
</body>
</html>