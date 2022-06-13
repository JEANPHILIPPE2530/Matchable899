class DropOfferIdtoMatches < ActiveRecord::Migration[6.1]
  def change
    remove_reference :matches, :offer, foreign_key: true
    add_reference :matches, :company, foreign_key: true
  end
end
