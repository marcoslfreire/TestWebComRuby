class HomePage < SitePrism::Page
    element :userName, :xpath, "//*[@id='ember239']/div[2]"
    element :navBarHome, :id, "ember19"
    element :myIcon, :id, "ember31"
    

    def checkLoginSucessful
        expect(userName.text).to eql "Olá, Marcos!"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end 
end

    