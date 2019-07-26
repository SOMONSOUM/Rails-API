require 'rails_helper'

Rspec.describe 'Todos API', type: :request do 
  let!(:todos) { create_list(:todo, 10) }
  let(:todo_id) { todo.first.id }

  describe 'GET /todos' do
    before { get '/todos' }

    it 'returns todos' do
      expect(json).not_to be_empty
      expect(json_size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_satus(200)
    end
  end
end