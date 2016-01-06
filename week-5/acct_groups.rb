#Time worked 1.25 hours
#Pseudocode
#make list of fiddler crabs in array
#count size of group
#make algorithm to decide how to divy up group so no one is in a group of 3 or less
#loop a method that creates new groups
#inside that loop push a random student from fiddler_crab array and delete them from array
#push up to five students and push into acct groups array
#return accountability groups

fiddler_crabs = ["Aaron Hu","Adam Pinsky","Akeem Street","Alex Forger","Andrew Kim","Baron Kwan","Brian Bier","Byron Gage","Carl Conroy","Charlie Bliss","Christopher Bunkers","Cody Kendall","Coline Forde","David Valencia","Emily Bosakowski","Everett Golden","Hagai Zwick","Heather C","Ian Wudarski","Ieronim Oltean","Jake Hamilton","James Boyd","Jasmeet Chatrath","Jenna El-Amin","Jerrie Evans","Joe Case","Jonathan Case","Jonathan Schwartz","Jonathan Silvestri","Kathryn Garbacz","Ian Kinner","Kyle Cierzan","Kyle Zelman","Linda Oanh Ho","Yiorgos Makridakis","Matt Harris","Matthew Baquerizo","Menuka Samaranayake","Michael Pintar","Mollie Stein","Lydia Nash","Aaron Opsahl","Peter Leong","Peter Stratoudakis","Prince Sadie","Ryan F. Salerno","Sanderfer Chau","Sarah Finken","EMMET SUSSLIN","Sydney Rossman-Reich","Eric Tenza","Thomas Yancey","Tim Kelly","Timothy Beck"]

test_case1 = [1,2,3,4,5,6,7]
test_case2 = [1,2,3,4,5,6,7,8,9,10,11]
test_case3 = [1,2,3,4,5,6]
test_case4 = [1,2,3,4,5,6,7,8,9,10,11,12,13]
#inital solution
=begin
def acct_groups(student_array)
  student_arr = student_array.dup
  groups = []

  until student_arr.empty?
    new_group = []
    if student_arr.size % 5 == 0
      5.times do
        idx = rand(0..student_arr.size - 1)
        new_group << student_arr[idx]
        student_arr.delete_at(idx)
      end
    elsif student_arr.size % 4 == 0 || student_arr.size >= 7
      4.times do
        idx = rand(0..student_arr.size - 1)
        new_group << student_arr[idx]
        student_arr.delete_at(idx)
      end
    else
      3.times do
        idx = rand(0..student_arr.size - 1)
        new_group << student_arr[idx]
        student_arr.delete_at(idx)
      end
    end
    groups << new_group
  end
  groups
end
=end
#refactor

def create_new_group(arr,group)
    idx = rand(0..arr.size - 1)
    group << arr[idx]
    arr.delete_at(idx)
end

def acct_groups(student_array)
  student_arr = student_array.dup
  groups = {}
  count = 1
  until student_arr.empty?
    new_group = []
    if student_arr.size % 5 == 0
      5.times {create_new_group(student_arr,new_group)}
    elsif student_arr.size % 4 == 0 || student_arr.size >= 7
      4.times {create_new_group(student_arr,new_group)}
    else
      3.times {create_new_group(student_arr,new_group)}
    end
    groups["group_#{count.to_s}"] = new_group
    count += 1
  end
  groups
end

acct_groups(fiddler_crabs).each {|k,v| puts "#{k} #{v}"}
acct_groups(test_case1).each {|k,v| puts "#{k} #{v}"}
acct_groups(test_case2).each {|k,v| puts "#{k} #{v}"}
acct_groups(test_case3).each {|k,v| puts "#{k} #{v}"}
acct_groups(test_case4).each {|k,v| puts "#{k} #{v}"}


=begin
What was the most interesting and most difficult part of this challenge?
  The fact that there were no guidelines or tests. The fact that it was all open to interpretation for the most part.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Yea I do, I have been finding I miss some steps in the pseudocode but breaking it down prior gives me a good base
Was your approach for automating this task a good solution? What could have made it even better?
  I like my solution, maybe adding some functionality to have an even distribution of guys and girls rather than just
  randomly selecting would be cool
What data structure did you decide to store the accountability groups in and why?
  only after reading this I realized hash might be a better option if I could dynamically change the group name,
  I like my solution a lot more like this. This way each group has a name and can be accesses easier
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I learned how to dynamically create hash keys which I think is pretty cool!
=end

