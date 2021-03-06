<h1>支払確認</h1>

<p id="notice"><%= notice %></p>

<table border="1">
  <thead>
    <tr>
      <th>名前</th>
      <th>4月</th>
      <th>5月</th>
      <th>6月</th>
      <th>7月</th>
      <th>8月</th>
      <th>9月</th>
      <th>10月</th>
      <th>11月</th>
      <th>12月</th>
      <th>1月</th>
      <th>2月</th>
      <th>3月</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @funds.each do |fund| %>
      <tr>
        <td><center><%= fund.name %></center></td>
        <td><%= fund.apr14 %></td>
        <td><%= fund.may14 %></td>
        <td><%= fund.jun14 %></td>
        <td><%= fund.jul14 %></td>
        <td><%= fund.aug14 %></td>
        <td><%= fund.sep14 %></td>
        <td><%= fund.oct14 %></td>
        <td><%= fund.nov14 %></td>
        <td><%= fund.dec14 %></td>
        <td><%= fund.jan15 %></td>
        <td><%= fund.feb15 %></td>
        <td><%= fund.mar15 %></td>
        <td><%= link_to '閲覧', fund %></td>
        <td><%= link_to '編集', edit_fund_path(fund) %></td>
        <td><%= link_to '削除', fund, method: :delete, data: { confirm: '削除します' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to '新規作成', new_fund_path %><br>
<%= link_to 'Hello', 'hello' %><br>
<%= link_to 'メール', 'mail' %>

