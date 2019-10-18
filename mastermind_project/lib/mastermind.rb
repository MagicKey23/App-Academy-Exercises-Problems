require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end
    def print_matches(guess)
       p @secret_code.num_exact_matches(guess)
       p @secret_code.num_near_matches(guess)
    end

    def ask_user_for_guess
        p "Enter a code"
        user = gets.chomp
        guess = Code.from_string(user)
        self.print_matches(guess)
        return true if @secret_code == guess
        false
    end

end
