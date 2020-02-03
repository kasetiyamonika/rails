Use in polymorphic asoication....
<% if report.reportable_type == 'Contact' %>
  <% report.reportable.mobile %>
<% else %>
  <% report.reportable.email %>
<% end %>
