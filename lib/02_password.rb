def signup
    puts 'bonjour cher utilisateur, tu peux créer un mot de passe :'
    print "> :"
    password = gets.chomp
    return password
end

def trytry
    puts "rentre ton mot de passe, s'il te plait"
    print "> :"
    try = gets.chomp
    return try
end

def welcome_screen
    puts "Bonjour et bienvenu dans la chambre des secrets"
    puts "je vais te confier quelque chose que même le FBI il est pas au courant : brigitte c'est la nounou d'emmanuel"
end

def login(signup, trytry)
    mdp = signup
    try = trytry
   
   while ( mdp != try )
     puts "Tu t'es trompé, réessaie"
     print "> "  
     try = gets.chomp 
      if try ==  mdp
      end
    end
    ok = ok
   end
   
   def perform
       ok = login(signup, trytry)
       welcome_screen
   end
   
   perform



