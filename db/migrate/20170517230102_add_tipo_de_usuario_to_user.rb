class AddTipoDeUsuarioToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tipo_de_usuario, :string
  end
end
