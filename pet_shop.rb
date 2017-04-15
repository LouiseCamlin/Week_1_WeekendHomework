def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += sold
end


def stock_count(pet_shop)
  return pet_shop[:pets].count
end



def pets_by_breed(pet_shop, breed)
  return pet_shop[:pets].select { |n| n[:breed] == breed}
end



def find_pet_by_name(pet_shop, name)
  return pet_shop[:pets].select { |pet| pet[:name] == name} [0]
end



def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet_shop[:pets].delete(pet)
    end
  end
end


def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
end


def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer,pet)
  return customer[:pets].push(pet)
end



# # #Optional

def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end







