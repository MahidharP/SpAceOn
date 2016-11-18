json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :dob, :occupation, :gender, :mobile, :pro_pic, :id_proof, :user_id
  json.url profile_url(profile, format: :json)
end
