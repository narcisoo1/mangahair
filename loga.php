<?php 
include 'conexao.php';

// session_start inicia a sessão
session_start();
// as variáveis login e senha recebem os dados digitados na página anterior
$login = $_POST['email'];
$senha = $_POST['senha'];
// as próximas 3 linhas são responsáveis em se conectar com o bando de dados.
 
// A variavel $result pega as varias $login e $senha, faz uma 
//pesquisa na tabela de usuarios
$sql = mysqli_query($conexao,"SELECT * FROM `Cliente` WHERE `email` = '$login' AND `senha`= '$senha'");
/* Logo abaixo temos um bloco com if e else, verificando se a variável $result foi 
bem sucedida, ou seja se ela estiver encontrado algum registro idêntico o seu valor
será igual a 1, se não, se não tiver registros seu valor será 0. Dependendo do 
resultado ele redirecionará para a página site.php ou retornara  para a página 
do formulário inicial para que se possa tentar novamente realizar o login */
if(mysqli_num_rows($sql) > 0 )
{
$_SESSION['email'] = $login;
$_SESSION['senha'] = $senha;
header('location:index.html');
}
else{
  unset ($_SESSION['email']);
  unset ($_SESSION['senha']);
  header('location:login.html');
   
  }
?>