<?php
require 'config.php';

?>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta id="viewport" name="viewport" content="width=device-width, user-scalable=no">
		<title>Sistema de Pagamento</title>
		<link rel="stylesheet" href="style.css">
		<script type="text/javascript" src="ajax.js"></script>
	</head>
    <body>
        <div class="topo">
            <form method="POST">
                Busque seu produto:<br>
                <input type="text"  name="txtnome" />
                <input type="submit"  value="Pesquisar" />
            </form>     
        </div> 
        
            
       
        <table border=1 class="tabela">
            <tr>
                <th>Referencia</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Fornecedores</th>
            </tr>
            
            <?php
            
            $txtnome = addslashes($_POST["txtnome"]);
            
            $sql = "SELECT * FROM cadastroprodutos WHERE referencia = '$txtnome' OR nome ='$txtnome'";
            $sql = $pdo->query($sql);
            if($sql->rowCount() > 0) {
                
                foreach($sql->fetchAll() as $cadastroprodutos) {
                    echo '<tr>';
                    echo '<td>'.$cadastroprodutos['referencia'].'</td>';
                    echo '<td>'.$cadastroprodutos['nome'].'</td>';   
                    echo '<td>'.$cadastroprodutos['preco'].'</td>';   
                    echo '<td>'.$cadastroprodutos['fornecedores'].'</td>';
                    echo '</tr>';        
                }
            }           
            ?>
        </table>




    </body>
</html>