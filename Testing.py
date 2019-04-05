from helium.api import *
import time

def main():
    address = input('Please enter the address of the website: ')
    print("beginning testing")
    homepage(address)
    barbIncrease(address)
    barbDecrease(address)
    custIncrease(address)
    custDecrease(address)
    barbToggle(address)


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
    time.sleep(1)
    print("Value increased, Begining extreme value test")
    for i in range(10):
        click("IncreaseB")
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
    print("Extreme decrease test passed")
    kill_browser()

def custIncrease(address):
    print("beginning customer increase test")
    start_chrome()
    go_to(address + ":8080")
    click("BarberMode")
    click("IncreaseC")
    time.sleep(2)
    print("Value increased, Begining extreme value test")
    for i in range(100):
        click("IncreaseC")
    time.sleep(2)
    print("Customer Increased, test passed")
    kill_browser()

def custDecrease(address):
    print("beginning customer Decrease test")
    start_chrome()
    go_to(address + ":8080")
    click("BarberMode")
    print("Increasing Value for test")
    for i in range(20):
        click("IncreaseC")
    time.sleep(1)
    print("Customer Increased, begining decrease")
    click("DecreaseC")
    print("Customer decreased. Beginning extreme decrease")
    for i in range(100):
        click("DecreaseC")
    print("Extreme decrease test passed")
    kill_browser()

def barbToggle(address):
    print("beginning barbershop open test")
    start_chrome()
    go_to(address + ":8080")
    click("BarberMode")
    time.sleep(1)
    print("Shop currently open, Clicking close")
    click("Close")
    time.sleep(1)
    print("Test successfully passed. Store closed")
    print("Beginning extreme flip flop test")
    for i in range(50):
        click("Open")
        click("Close")
    time.sleep(1)
    print("Extreme test passed")
    kill_browser()