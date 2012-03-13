
<!-- START:explanation -->
<%= form_for(@order) do |f| %>
  <% if @order.errors.any? %>
    <div id="error_explanation">
<!-- START_HIGHLIGHT -->
      <h2><%=raw t('errors.template.header', count: @order.errors.count,
        model: t('activerecord.models.order')) %>.</h2>
      <p><%= t('errors.template.body') %></p>
<!-- END_HIGHLIGHT -->

      <ul>
      <% @order.errors.full_messages.each do |msg| %>
<!-- START_HIGHLIGHT -->
        <li><%=raw msg %></li>
<!-- END_HIGHLIGHT -->
      <% end %>
      </ul>
    </div>
  <% end %>
<!-- ... -->
<!-- END:explanation -->

  <div class="field">
    <%= f.label :name %><br />
    <%= f.text_field :name, size: 40 %>
  </div>
  <div class="field">
<!-- START_HIGHLIGHT -->
    <%= f.label :address, t('.address_html') %><br />
<!-- END_HIGHLIGHT -->
    <%= f.text_area :address, rows: 3, cols: 40 %>
  </div>
  <div class="field">
    <%= f.label :email %><br />
    <%= f.email_field :email, size: 40 %>
  </div>
  <div class="field">
    <%= f.label :pay_type %><br />
    <%= f.select :pay_type, Order::PAYMENT_TYPES,
#START_HIGHLIGHT
                  prompt: t('.pay_prompt_html') %>
<!-- END_HIGHLIGHT -->
  </div>
  <div class="actions">
<!-- START_HIGHLIGHT -->
    <%= f.submit t('.submit') %>
<!-- END_HIGHLIGHT -->
  </div>
<% end %>
