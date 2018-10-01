<h1>Todas as lojas</h1>

<table border='2px' style='width: 50%' >
	<tr>
		<td>Nome</td>
		<td>Piso</td>
		<td>Alterar</td>
		<td>Remover</td>
	</tr>
<% @stores.each do |stores| %>
<tr>
		<td><%= link_to shop.name, shoppingshow_path(shop.id) %></td>
		<td>Piso</td>
		<td><%= link_to 'Alterar', shoppingedit_path(shop.id) %></td>
		<td><%= link_to 'Remover', shoppingdestroy_path(shop.id), :method => 'delete' %></td>
		<td>Remover</td>
</tr>
<tr>
	<td><%= link_to 'Adicionar uma loja a este shopping', stores_new_path %></td>
</tr>
<% end %> 
</table>
