from helium.api import *
import time

def main():
    address = input('Please enter the address of the website: ')
    print("beginning testing")
    homepage(address)
    barbIncrease(address)
    barbDecrease(address)
    

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
    click("IncreaseB")
    time.sleep(2)
    print("Value increased, Begining extreme value test")
    for i in range(10):
        click("IncreaseB")
        time.sleep(0.3)
    time.sleep(2)
    print("Barber Increase Running, test passed")
    kill_browser()  
    
def barbDecrease(address):
    print("beginning barber Decrease test")
    start_chrome()
    go_to(address + ":8080")
    click("BarberMode")
    print("Increasing Value for test")
    for i in range(10):
        click("IncreaseB")
        time.sleep(0.5)
    time.sleep(2)
    print("Barber Increased, begining decrease")
    click("DecreaseB")
    print("Barber decreased. Beginning extreme decrease")
    for i in range(100):
        click("DecreaseB")
        time.sleep(0.1)
    print("Extreme decrease test passed")
    kill_browser()   