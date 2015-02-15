RSpec.describe TasksController, type: :routing do
  describe 'Routing' do
    it_routes_to(:get, '/', 'tasks#index')
  end
end

RSpec.describe Api::BaseController, type: :routing do
  describe 'Routing' do
    it_routes_to(:get, '/api/tasks', 'api/tasks#index', format: :json)
    it_routes_to(:post, '/api/tasks', 'api/tasks#create', format: :json)
    it_routes_to(:get, '/api/tasks/new', 'api/tasks#new', format: :json)
    it_routes_to(:get, '/api/tasks/1/edit', 'api/tasks#edit', format: :json, id: '1')
    it_routes_to(:get, '/api/tasks/1', 'api/tasks#show', format: :json, id: '1')
    it_routes_to(:put, '/api/tasks/1', 'api/tasks#update', format: :json, id: '1')
    it_routes_to(:delete, '/api/tasks/1', 'api/tasks#destroy', format: :json, id: '1')
  end
end
