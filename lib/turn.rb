class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @card.answer == @guess ||  @card.answer == @guess.capitalize!
  end

  def feedback
    if correct? == true
      "Correct!"
    elsif correct? == false
      "Incorrect"
    end
  end
end
