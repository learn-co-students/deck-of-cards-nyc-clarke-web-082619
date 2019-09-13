class CreateCards < ActiveRecord::Migration

def change
    create_table :cards do |t|
        t.hash :rank
        t.string :suit
end

end