ActiveRecord::Schema.define(version: 9) do

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "show_id"
    t.integer "actor_id"
    t.string "catchphrase"
  end

  create_table "networks", force: :cascade do |t|
    t.string "call_letters"
    t.integer "channel"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.integer "network_id"
    t.string "genre"
    t.string "day"
    t.string "season"
  end

end