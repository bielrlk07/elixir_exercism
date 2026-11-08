
def exchange_money(budget, exchange_rate):
    return budget / exchange_rate


def get_change(budget, exchanging_value):
    return budget - exchanging_value

def get_value_of_bills(denomination, number_of_bills):
    return denomination * number_of_bills


def get_number_of_bills(amount, denomination):
    return int(amount / denomination)

def get_leftover_of_bills(amount, denomination):
    return amount % denomination

def exchangeable_value(budget, exchange_rate, spread, denomination):
    exchange_rate_calculated = exchange_rate + ((exchange_rate * spread/100))
    exchange_money_calculated = budget / exchange_rate_calculated
    number_of_notes = int(exchange_money_calculated / denomination)
    return int(number_of_notes * denomination)