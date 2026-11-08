#Tempo esperado para o cozimento do bolo
EXPECTED_BAKE_TIME = 40

#Tempo restante para o cozimento do bolo
def bake_time_remaining(elapsed_bake_time):
    """
    Tempo esperado - tempo cozinhado
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time

    
#Tempo de preparamento em minutos do bolo
def preparation_time_in_minutes(number_of_layers):
    """
    Numero de layers * 2
    """
    return number_of_layers * 2

#Tempo decorrido em minutos considerando as camadas
def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Numero de (layers * 2) + o tempo decorrido
    """
    return (number_of_layers*2) + elapsed_bake_time
