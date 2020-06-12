### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1 # unknown method .value; single '=' is assingment operator not comparison operator, '==' should be used instead
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # should be def instead of dif, and parameters separated by a comma
  if card1.value > card2.value  #unknown method .value; wrong indentation
    return card                 # parameter card not in method definition 
  else                          # wrong indentation
    return card2                # wrong indentation
  end                           # wrong indentation
end                             # wrong indentation
end

def self.cards_total(cards)
  total                                  # initial value not set
  for card in cards
    total += card.value                  # unknown method .value
    return "You have a total of" + total # return in the wrong place, it will only return the value of first iteration
  end                                    # syntax error, not possible to add string and int, interpolation could be used instead and space added after ..of "
end
```
