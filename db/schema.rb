# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090706101126) do

  create_table "open_id_authentication_associations", :force => true do |t|
    t.integer "issued"
    t.integer "lifetime"
    t.string  "handle"
    t.string  "assoc_type"
    t.binary  "server_url"
    t.binary  "secret"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.integer "timestamp",  :null => false
    t.string  "server_url"
    t.string  "salt",       :null => false
  end

  create_table "passwords", :force => true do |t|
    t.integer  "user_id"
    t.string   "reset_code"
    t.datetime "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title",                                                                                      :null => false
    t.string   "detail",                                                                                     :null => false
    t.string   "door_no"
    t.string   "street"
    t.string   "locality"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.integer  "owner_id",                                                                                   :null => false
    t.enum     "rent_type",                 :limit => [:rent, :lease],                    :default => :rent
    t.text     "lease_terms"
    t.text     "near_by_amenitites"
    t.text     "suitable_for"
    t.integer  "dealer_commision"
    t.boolean  "lift"
    t.boolean  "centralized_air_condition"
    t.boolean  "power_backup"
    t.boolean  "vaastu_compliant"
    t.integer  "no_of_bedrooms"
    t.integer  "no_of_bathrooms"
    t.integer  "no_of_floors"
    t.integer  "floor_no"
    t.integer  "no_of_parkings"
    t.integer  "no_of_covered_parkings"
    t.boolean  "commom_parking_available"
    t.integer  "area"
    t.integer  "rent"
    t.integer  "security_deposit"
    t.integer  "monthly_maintenance"
    t.boolean  "furnished"
    t.boolean  "security_system"
    t.enum     "condition",                 :limit => [:new, :less_than_5, :more_than_5]
    t.string   "facing_direction"
    t.string   "contact_person"
    t.string   "phone_number1"
    t.string   "phone_number2"
    t.string   "email_id"
    t.enum     "preferred_contact_mode",    :limit => [:sms, :phone, :email]
    t.boolean  "gym"
    t.boolean  "servant_quarters"
    t.boolean  "pets_ok"
    t.boolean  "smoking_ok"
    t.boolean  "bachelors_ok"
    t.boolean  "security_person"
    t.boolean  "only_vegetarian"
    t.datetime "posted_date"
    t.datetime "available_from"
    t.datetime "expiration_date"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "identity_url"
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.string   "activation_code",           :limit => 40
    t.string   "state",                                    :default => "passive", :null => false
    t.datetime "remember_token_expires_at"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
