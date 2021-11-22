Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000"
        resource "*", header: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
    allow do
        origins "http://localhost:4000"
        resource "*", header: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
    allow do
        origins "http://localhost:3001"
        resource "*", header: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
end