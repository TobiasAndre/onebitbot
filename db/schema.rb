ActiveRecord::Schema.define(version: 2019_01_09_000812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
  end

  create_table "faq_hashtags", force: :cascade do |t|
    t.integer "faq_id"
    t.integer "hashtag_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.integer "company_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
  end

end
