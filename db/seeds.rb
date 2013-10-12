user = User.new({ email: 'juanc.com@gmail.com',
                  password: 'demo1234',
                  username: 'admin',
                  first_name: 'juanca',
                  last_name: 'condori'
                })
user.save
user.add_role :admin
