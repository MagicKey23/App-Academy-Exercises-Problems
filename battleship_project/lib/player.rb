class Player
def get_move
    puts "enter a position with coordinates separated with a space like `4 7`"
    move_input = gets.chomp
    position = [move_input[0].to_i, move_input[2].to_i]
    return position
end
    
end
