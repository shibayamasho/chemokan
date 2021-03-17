require 'rails_helper'
describe PatientsController, type: :request do
#RSpec.describe "Patients", type: :request do

  # コントローラー単体テストを実行する際は、basic認証とauthenticate_user!をコメントアウトしておくこと。

  before do
    @patient = FactoryBot.create(:patient)
  end

  describe "GET #index" do
    it "indexアクションにリクエストすると、正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end

    it "indexアクションにリクエストすると、レスポンスにログアウトのボタンが存在する" do
      get root_path
      expect(response.body).to include('ログアウト')
    end

    it "indexアクションにリクエストすると、レスポンスにレジメン一覧へのリンクが存在する" do
      get root_path
      binding.pry
      expect(response.body).to include('レジメン一覧')
    end

    it "indexアクションにリクエストすると、レスポンスに患者一覧が存在する" do
      get root_path
      expect(response.body).to include('登録患者一覧')
    end

    it "indexアクションにリクエストすると、レスポンスに登録した患者名が存在する" do
      get root_path
      expect(response.body).to include(@patient.name)
    end

    it "indexアクションにリクエストすると、レスポンスに登録した患者の性別が存在する" do
      get root_path
      expect(response.body).to include(@patient.gender.name)
    end

    it "indexアクションにリクエストすると、レスポンスに患者新規登録ページへのリンクが存在する" do
      get root_path
      expect(response.body).to include('患者新規登録')
    end

    it "indexアクションにリクエストすると、レスポンスに患者検索フォームが存在する" do
      get root_path
      expect(response.body).to include('患者名で検索する')
    end
  end
end
