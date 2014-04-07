
# Make an admin user

User.create(email: "admin@example.com", is_admin: true, password: "notsecure", password_confirmation: "notsecure")

# Make some items

Item.create(name: 'Kibble', amount_in_stock: 500, price: 350)
Item.create(name: 'Feather bapper', amount_in_stock: 20, price: 2499, promoted: true)
Item.create(name: 'Catnip', amount_in_stock: 0, price: 1900)
Item.create(name: 'Fluffy pillows', amount_in_stock: 31, price: 4500, promoted: true)
Item.create(name: 'Moon base', amount_in_stock: 2, price: 9999)
