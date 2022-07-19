defmodule ChripWeb.PostLve.PostComponent do
  use ChripWeb, :live_component

  def render(assigns) do
     ~L"""
     <div id="post-<%= @post.id %>" class="post">
     <table>
       <thead>
         <tr>
           <th>Username</th>
           <th>Body</th>
           <th>Likes</th>

           <th></th>
         </tr>
       </thead>
       <tbody id="posts">
         <%= for post <- @posts do %>
           <tr id={"post-#{post.id}"}>
             <td><%= post.username %></td>
             <td><%= post.body %></td>
             <td><%= post.likes %></td>

             <td>
               <span><%= live_redirect "Show", to: Routes.post_show_path(@socket, :show, post) %></span>
               <span><%= live_patch "Edit", to: Routes.post_index_path(@socket, :edit, post) %></span>
               <span><%= link "Delete", to: "#", phx_click: "delete", phx_value_id: post.id, data: [confirm: "Are you sure?"] %></span>
             </td>
           </tr>
         <% end %>
       </tbody>
     </table>
     </div>
     """

  #   <table>
  #   <thead>
  #     <tr>
  #       <th>Username</th>
  #       <th>Body</th>
  #       <th>Likes</th>

  #       <th></th>
  #     </tr>
  #   </thead>
  #   <tbody id="posts">
  #     <%= for post <- @posts do %>
  #       <tr id={"post-#{post.id}"}>
  #         <td><%= post.username %></td>
  #         <td><%= post.body %></td>
  #         <td><%= post.likes %></td>

  #         <td>
  #           <span><%= live_redirect "Show", to: Routes.post_show_path(@socket, :show, post) %></span>
  #           <span><%= live_patch "Edit", to: Routes.post_index_path(@socket, :edit, post) %></span>
  #           <span><%= link "Delete", to: "#", phx_click: "delete", phx_value_id: post.id, data: [confirm: "Are you sure?"] %></span>
  #         </td>
  #       </tr>
  #     <% end %>
  #   </tbody>
  # </table>
  end
end
