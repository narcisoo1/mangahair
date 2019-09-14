<?php
include 'conexao.php';
$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$email = $_POST['email'];
$c_senha = $_POST['c_senha'];
$senha = $_POST['senha'];
$telefone = $_POST['telefone'];
$data_nascimento = $_POST['data_nascimento'];
$genero = $_POST['genero'];


$sql = "INSERT INTO Cliente (nome,sobrenome,email,senha,data_nascimento,telefone,genero) VALUES ('$nome','$sobrenome','$email','$senha','$data_nascimento','$telefone','$genero')";

if($conexao->query($sql)=== TRUE){
    header('Location: index.html');
}else{
    echo "ERRO: ".$sql."<br>".$conexao->error;
}

$conexao->close();

?>