Dir[File.join(File.dirname(__FILE__), 'C:\Projetos\TestWebRuby\features\pages*.page.rb')].each { |file| require file}

module Page

    def login
        @login ||= Loginpage.new
    end
    
    def home
        @home ||= Homepage.new
    end
end