require 'sinatra'
class ToDoManager
  
  
  @@todos=["Buy some milk!" , "Feed the cat", ]  #this is a class variable (not instance)
  
  
  def self.index # return everything inside the class todo . self. is a static method inside                the class
    @@todos
  end
  
  def self.show(id) # will return only one depend on id
    @@todos[id]
    
  end
  
  def self.create (new_todo)
    @@todos.push(new_todo)
    # or use the shovel
    # @@todos << new_todo
  end
  
  def self.delete (id)
    @@todos.delete_at(id)
  end
  
  def self.update(id ,new_todo)
    @@todos[id]=new_todo
  end
    
end