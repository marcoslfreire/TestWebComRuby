Dado('- que o usuario queira logar') do
    @test = LoginPage.new
    @test.load

  end
  
  Quando('- ele digitar as credenciais validas') do
    @test.userLogin(CREDENTIAL[:usuario][:email], CREDENTIAL[:usuario][:senha])
    
  end
  
  Então('- deve acessar o site com sucesso') do
    
  end
  