class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :detail, :null => false
      t.string :door_no, :street, :locality, :city, :state, :pincode
      t.integer :owner_id, :null => false
      t.enum :rent_type,  :limit => [:rent, :lease], :default => :rent
      t.text :lease_terms #length of lease, notice period etc
      t.text :near_by_amenitites #near by hospitals, schools, train stations etc
      t.text :suitable_for #suitable for shop, garage, showroom etc
      t.integer :dealer_commision
      t.boolean :lift,:centralized_air_condition, :power_backup,:vaastu_compliant
      t.integer :no_of_bedrooms, :no_of_bathrooms, :no_of_floors, :floor_no
      t.integer :no_of_parkings, :no_of_covered_parkings
      t.boolean :commom_parking_available
      t.integer :area,:rent,:security_deposit, :monthly_maintenance
      t.boolean :furnished, :security_system
      t.enum :condition, :limit => [:new, :less_than_5, :more_than_5]
      t.string :facing_direction,:contact_person
      t.string :phone_number1,:phone_number2,:email_id
      t.enum :preferred_contact_mode, :limit => [:sms, :phone, :email]
      t.boolean :gym,:servant_quarters,:pets_ok,:smoking_ok,:bachelors_ok, :security_person, :only_vegetarian
      t.datetime :posted_date, :available_from, :expiration_date
      t.boolean :active
      t.timestamps 
    end
  end

  def self.down
    drop_table :posts
  end
end
