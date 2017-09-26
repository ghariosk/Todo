require 'sinatra'
class ToDoManager
  
  
  @@todos=["<ol> <li>Buy some milk! </li>" , "<li> Feed the cat </li>", "</ol>"]  #this is a class variable (not instance)
  
  
  def self.index # return everything inside the class todo . self. is a static method inside                the class
    @@todos
  end
  
  def self.show(id) # will return only one depend on id
    @@todos[id]
    
  end
  
  def self.create (new_todo)
    @@todos.pop()

    @@todos.push("<li>" + new_todo + "</li>")
    @@todos.push("</ol>")
    # or use the shovel
    # @@todos << new_todo
  end
  
  def self.delete (id)
    

    @@todos.delete_at(id)
    if id===0
      @@todos.shift('<ol>')
    elsif id===(@@todos.length+1)
      @@todos.push('</ol>')
    end

  end
  
  def self.update(id ,new_todo)
    @@todos[id]="<li>" + new_todo + "</li>"
     if id===0
      @@todos.shift('<ol>')
    elsif id===(@@todos.length+1)
      @@todos.push('</ol>')
    end
  end
    
end