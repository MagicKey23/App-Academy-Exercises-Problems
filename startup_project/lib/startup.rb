require "employee"
class Startup
attr_reader :name, :funding, :salaries, :employees
def initialize(name, funding, salaries)
@name = name
@funding = funding
@salaries = salaries
@employees = []
end

def valid_title?(title)
if @salaries.has_key?(title)
true
else
false
end

end

def > (startup)
if self.funding > startup.funding
true
else
    false
end
end

def hire(name, title)
if valid_title?(title)
    @employees << Employee.new(name, title)
else
    raise "error"
end

end

def size
@employees.length
end

def pay_employee(employee)
if @funding > @salaries[employee.title]
employee.pay(@salaries[employee.title])
@funding -= @salaries[employee.title]
else
    raise "error"
end

end
def payday
    @employees.each {|employee| self.pay_employee(employee)}
end

def average_salary
sum = 0 
@employees.each {|employee| sum += @salaries[employee.title]}
return sum/@employees.length
end

def close
@employees = []
@funding = 0
end

def acquire(startup)
    @funding += startup.funding
    startup.salaries.each do |k,v|
          if !@salaries.include?(k)
             @salaries[k] = v
          end
    end 
    startup.employees.each {|employee| @employees << employee}
    startup.close
end

end
