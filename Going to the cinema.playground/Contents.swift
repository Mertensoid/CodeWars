import UIKit

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var ticketPrice: Double = 0
    var cardPrice: Double = card
    var counter: Int = 0
    var cardTicketPrice = ticket
    while ticketPrice - cardPrice < 1 {
        counter += 1
        cardPrice += cardTicketPrice * perc
        cardTicketPrice = cardTicketPrice * perc
        ticketPrice += ticket
    }
  return counter
}

print(movie(card: 500, ticket: 15, perc: 0.9))
