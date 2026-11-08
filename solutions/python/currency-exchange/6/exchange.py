"""
Estimar o valor após a troca
"""
def exchange_money(budget, exchange_rate):
    return budget / exchange_rate

"""Calcular o valor restante após uma troca"""
def get_change(budget, exchanging_value):
    return budget - exchanging_value

"""Calcular o valor das cédulas"""
def get_value_of_bills(denomination, number_of_bills):
    return denomination * number_of_bills

"""Calcular o número de cédulas"""
def get_number_of_bills(amount, denomination):
    return int(amount / denomination)

"""Calcular oque sobre após trocar pro cédulas"""
def get_leftover_of_bills(amount, denomination):
    return amount % denomination

"""Calcular o valor após a troca"""
def exchangeable_value(budget, exchange_rate, spread, denomination):
    exchange_rate_calculated = exchange_rate + ((exchange_rate * spread/100))
    exchange_money_calculated = budget / exchange_rate_calculated
    number_of_notes = int(exchange_money_calculated / denomination)
    return int(number_of_notes * denomination)