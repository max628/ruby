json.extract! inquirydetail, :id, :content, :subject, :user_id, :house_id, :created_at, :updated_at
json.url inquirydetail_url(inquirydetail, format: :json)
