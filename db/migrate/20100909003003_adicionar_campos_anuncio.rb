class AdicionarCamposAnuncio < ActiveRecord::Migration
  def self.up
    add_column :planos, :num_imagens, :integer
  end

  def self.down
    remove_column :planos, :num_imagens
  end
end
