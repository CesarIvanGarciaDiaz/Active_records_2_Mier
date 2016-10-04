class User < ActiveRecord::Base
  # Implementa los métodos y validaciones de tu modelo aquí.
   validates :email, format: { with: /\w+[.]?\w{1}[@]\w+[.]\w{2,}/}, uniqueness: true
   validates :age, :numericality => { :greater_than => 18 }
   validates :phone, :length => { :minimum => 10 }
  #validates :email, :format { with: /\w+[.]?\w{1}[@]\w+[.]\w{2,}/ }
  #{}/[a-z_0-9.]+\w{0}@[-a-z_0-9]+\w{1}[.]\w{2,}/
  def name
    p "#{first_name} #{last_name}"
  end

  def age
    p DateTime.now.year - birthday.year
  end


end
#[A-Za-z_0-9]+[.]\w{1}@
