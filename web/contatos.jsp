<%@page import="app.Bd"%>
<%@page import="app.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    </head>
    <body>
        <h1>Contatos</h1>
        <%try{
             if(request.getParameter("add")!=null ){
                 String nome = request.getParameter("nome");
                 String email = request.getParameter("email");
                 String telefone = request.getParameter("telefone");
                 Contato c = new Contato();
                 c.setNome(nome);
                 c.setEmail(email);
                 c.setTelefone(telefone);
                 Bd.getContatos().add(c);
             }else if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("i"));
                Bd.getContatos().remove(i);
             }
        }catch(Exception ex){%>
            <div>Erro ao Processar o comando: <%=ex.getMessage()%></div>
        <%}%>
        <div class="row">
            <div class="col-md-5">
        <fieldset>
            <legend>Novo contato</legend>
            <form>
                Nome:</br>
                <input type="text" name="nome"/></br>
                Email:</br>
                <input type="text" name="email"/></br>
                Telefone:</br>
                <input type="text" name="telefone"/></br>
                <br/>
                <input type="submit" name="add" value="Adicionar"/>
            </form>
        </fieldset>
                  </div>
                <div class="col-md-6">
        <h2>Lista</h2>
        <table class="table table-hover table-stripped">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Exclusão</th>
            </tr>
            <%for(int i=0; i<Bd.getContatos().size();i++){
                Contato c = Bd.getContatos().get(i);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="i" value="<%=i%>"/>
                            <input type="submit" name="remove" value="Excluir"/>
                        </form>
                    </td>   
                </tr>
            <%}%>
        </table>
              
            </div>
        </div>
    </body>
</html>
