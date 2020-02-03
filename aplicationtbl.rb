=New Application created........
 rails new saloon -d=mysql
  Application created


=/monika/rails/salon

-rails db:create
=Model

  1}User

    -rails g model <table_name> <feild_name>:<data_type> <feild_name>:<data_type>
      -rails g model User first_name:string{100} last_name:string{100} address:text email:string mobile:string{13}

      -rails db:migrate

    Associations ->
      has_many :orders, dependent: :destroy
      has_many :appointments, dependent: :destroy

    Validation ->
      validates :first_name, :length => {
        minimum: 2,
        maximum: 30,
        too_short: "Must Have at list ${count} chacarater",
        too_long: "Must Have at list ${count} chacarater"
      }
      validates :last_name, :length => {
        minimum: 1,
        maximum: 30,
        too_short: "Must Have at list ${count} chacarater",
        too_long: "Must Have at list ${count} chacarater"
      }
      validates :mobile, format: { with: /\d{13}/ }
      validates :email, presence: true,  confirmation: true
      validates :address, length: { minimum: 5, maximum: 500 }

    Callbacks ->
        after_initialize :set_default
        after_create :send_email

        def set_default
          puts "I am on initialize"
          if self.address.blank?
            self.address = 'Surat city'
          end
        end

        def send_email
          puts " I am on after create"
          # CustomerMailer.confirmation_email(self).deliver_now
        end

  2}Category

    - rails g model Category name:string{30}
      -rails db:migrate

    Associations ->
      has_many :products, dependent: :destroy

    Validation ->
      validates :name, length: { minimum: 2, maximum: 100 }


  3}Product

    -rails g model Product name:string{100} category:references description:text mrp:decimal discount:decimal discount_type:string{3}
      -rails db:migrate

    Associations ->
      belongs_to :category
      has_many :order_products, dependent: :destroy
      has_many :orders, through: :order_products

    Validation ->
      validates :name, presence: true, length: {minimum: 2,maximum: 30}
      validates :description, length: {minimum: 5,maximum: 500}
      validates :mrp, numericality: true
      validates :discount, numericality: true
      validates :discount_type, acceptance: { accept: ['Fix', '%'] }
    Callbacks ->
      before_save :set_name

      def set_name
        puts "name is capitalize"
        self.name = name.downcase.titleize
      end


  4}Service

    -rails g model Service name:string{30} price:decimal description:text
      -rails db:migrate

    Associations ->
      has_many :appointments, dependent: :destroy
      has_many :users, through: :appointments

    Validation ->
      validates :name, presence: true, length: { minimum: 3, maximum: 50}
      validates :price, numericality: true
      validates :description, length: { minimum: 5, maximum: 500 }
    Callbacks ->
      before_save :set_name

      def set_name
        puts "name is capitalize"
        self.name = name.downcase.titleize
      end


  5}Order

    -rails g model Order user:references payment_id:string{20} payment_mode:string{30} date_time:datetime total:decimal status:string{20}
        -rails db:migrate

    Associations ->
      belongs_to :user
      has_many :order_products, dependent: :destroy
      has_many :products, through: :order_products

    Validation ->
      validates :total, numericality: true
      validates :status, acceptance: { accept: ['Success', 'Fail', 'cancle'] }
      validates :payment_id, length: { is: 4 }
      validates :payment_mode, acceptance: { accept: ['Cash', 'Cheque', 'Cash Online'] }

  6}Order_product

    -rails g model Order_product product:references order:reference price:decimal discount:decimal discount_type:string{3} total:decimal
      -rails db:migrate

    Associations ->
      belongs_to :order
      belongs_to :product

    Validation ->
      validates :price, :discount, :total, numericality: true
      validates :discount_type, acceptance: { accept: ['Fix', '%'] }


  7}Appointment

    -rails g model Appointment user:references service:references payment_id:string{20} payment_mode:string{30} price:decimal start_time:datetime end_time:datetime status:string{20} remark:text
      -rails db:migrate

    Associations ->
      belongs_to :user
      belongs_to :service

    Validation ->
      validates :payment_id, length: { is: 4 }
      validates :payment_mode, acceptance: { accept: ['Cash', 'Cheque', 'Cash Online'] }
      validates :price, numericality: true
      validates :status, acceptance: { accept: ['booked', 'In-progress','Finised','Cancled'] }
      validates :remark, length: { minimum: 5, maximum: 500 } presence: true
