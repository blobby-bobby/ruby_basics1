=begin
def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    nb = gets.chomp.to_i
    if nb >= 1 and nb <= 25 then
        if nb % 2 != 0 then
            nb.times do |i|
              puts " "*(nb-i-1) + "#"*(2*(i+1)-1)
            end
          else
            puts "On a dit un nombre impair !"
          end
    else
        puts "Ce n'est pas un nombre entre 1 et 25 !"
    end
end
=end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    etage = gets.chomp.to_i

    while etage.even?
        puts "Pas de nombre pair s'il vous plait!"
        print "> "
        etage = gets.chomp.to_i
    end

    puts "Voici la pyramide :"

    for c in 1..etage

        if c > (etage/2)
        break
    end

    j = 2*c-1
    
    diez = '#'*j
    espace = ' '*(etage-c)

    puts "#{espace}#{diez}"
end

d = (etage/2)+1

    while d > 0
        j = 2*d - 1
        
        diez = '#'*j
        espace = ' '*(etage-d)
        
        puts "#{espace}#{diez}"
        d -= 1
    end
end

wtf_pyramid