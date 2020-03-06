class Event < ApplicationRecord
 def editable?
   Date.today < date ? true : false

 end
end
