class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    option = 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' if Rails.env.production?

    create_table :ingredients, :options => option do |t|

	    t.string	:name,				null: false, index: true, limit: 191
      t.string	:name_kana, 		null: false, index: true, limit: 191
      t.integer :unit_id
      t.string 	:category,			null: false, index: true, limit: 191
      t.string	:name_with_unit, 				 index: true, limit: 191
      t.string  :specific_gravity
   	  t.string	:unit_in_lists

      t.timestamps
    end
  end
end
