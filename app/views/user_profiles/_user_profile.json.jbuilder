json.extract! user_profile, :id, :user_id, :first_name, :last_name, :phone, :address, :user_pic_url, :company_name, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)