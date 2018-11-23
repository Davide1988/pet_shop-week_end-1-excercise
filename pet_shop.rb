def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,money)
  return shop[:admin][:total_cash] = shop[:admin][:total_cash] + money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,pets)
  return shop[:admin][:pets_sold] += 2
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
   shop[:pets].select {|pet| pet[:breed] == breed}
end

def find_pet_by_name(shop,name)
     shop[:pets].delete_if {|pet| pet[:name] != name }.first
end

def remove_pet_by_name(shop,name)
  return shop[:pets].delete_if {|pet| pet[:name] = name }
end

def add_pet_to_stock(shop,new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer)
   return customer[:cash]
end

def remove_customer_cash(customer,cash)
  return customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end



#OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  return (customer[:cash] >= new_pet[:price])
end


 def sell_pet_to_customer(shop,pet,customer)
   if pet != nil && pet[:price] <= customer[:cash]
   customer[:pets] << shop[:pets].first
   shop[:admin][:pets_sold] += 1
   customer[:cash] -= pet[:price]
   shop[:admin][:total_cash] += pet[:price]
 end
end
