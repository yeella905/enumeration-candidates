# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
   @candidates.find { |candidate| candidate[:id] == id }
  end
  
  def experienced?(candidate)
    candidate[:years_of_experience] >= 2
  end
  
  def qualified_candidates(candidates)
      candidates.select do |candidate|
    experienced?(candidate) &&
    candidate[:github_points] >= 100 &&
    candidate[:languages].any? { |lang| ['Ruby', 'Python'].include?(lang) } &&
    candidate[:date_applied] >= 15.days.ago.to_date &&
    candidate[:age] > 17
  end
  end
  # More methods will go below