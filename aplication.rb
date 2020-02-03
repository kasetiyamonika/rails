=New Application created........
 rails new (project name) -d=mysql
  Application created

=/monika/rails/Project_name

  =Model
    -rails g model <table_name> <feild_name>:<data_type> <feild_name>:<data_type>
    -rails db:created
      created database (project_name)_devlopment
      created database (project_name)_test
    -rails db:migrate
      created all table

  =Sacffold
    -rails g Sacffold <table_name> <feild_name>:<data_type> <feild_name>:<data_type>
    -rails db:created
    -rails db:migrate

=In Atom
    -db->Migration->created all table->Set limit
    -Models -> <file>.rb -> set validations to particular feild
    -Models -> <file>.rb -> set callbacks to particular feild with after,before method
    -Models -> <file>.rb -> set Associations to table relation
