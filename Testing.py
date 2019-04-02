from helium.api import *

def main():
    address = input('Please enter the address of the website: ')
    print("beginning testing")
    homepage(address)
    barbIncrease()
    

def homepage(address):
    print("beginning homepage test")
    start_chrome()
    go_to(address + ":8080")
    click("Home")
    print("Homepage Running, test passed")
    kill_browser()

def barbIncrease(address):
    print("beginning barber increase test")
    start_chrome()
    go_to(address + ":8080")
    click("BarberMode")
    click(Button("IncreaseB"))
    print("Homepage Running, test passed")
    kill_browser()   