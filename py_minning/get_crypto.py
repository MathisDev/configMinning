import os
from simple_term_menu import TerminalMenu

def clean_list(list_file):
    final_list = []
    for el in list_file:
        if ".sh" in el:
            final_list.append(el)
    return(final_list)

def crypto_list():
    path = "../t-rex-0.26.8-linux/"
    list_file = os.listdir(path)
    list_file = clean_list(list_file)
    return(list_file)

def crypto_menu():
    options = crypto_list()
    terminal_menu = TerminalMenu(options)
    menu_entry_index = terminal_menu.show()
    select = options[menu_entry_index]
    return(select)

# test lib
#crypto_menu()
