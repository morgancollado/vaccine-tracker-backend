class AuthenticateProvider
    prepend SimpleCommand
  
    def initialize(email, password)
      @email = email
      @password = password
    end
  
    def call
      JsonWebToken.encode(provider_id: provider.id) if provider
    end

  
    private
  
    attr_accessor :email, :password
  
    def provider
      provider = Provider.find_by_email(email)
      return provider if provider && provider.authenticate(password)
  
      errors.add :provider_authentication, 'invalid credentials'
      nil
    end
  end