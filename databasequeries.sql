-- When clicking on marker on page, should run these queries:
select shop_Barbers, shop_Customers, shop_WaitTime from Shop where shopID = ?
select * from ShopTimes where shopID = ?
select * from Cuts where shopID = ?

-- Adding a barber to the database
update Shop set shop_Barbers=shop_Barbers+1 where shopID = ?

-- removing a barber to the database
update Shop set shop_Barbers=shop_Barbers-1 where shopID = ?

-- Adding a customer to the database
update Shop set shop_Customers=shop_Customers+1 where shopID = ?

-- Adding a customer to the database
update Shop set shop_Customers=shop_Customers-1 where shopID = ?
