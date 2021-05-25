class CreateRubyData < ActiveRecord::Migration[6.1]
  def change
    create_table :ruby_data do |t|
      t.string :valInput
      t.string :rubyType

      t.timestamps
    end
  end
end
