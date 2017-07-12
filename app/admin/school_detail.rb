ActiveAdmin.register SchoolDetail do

  permit_params :contact_numbers, :fax_number, :main_addresses, :description, :since_year, :school_id

end
