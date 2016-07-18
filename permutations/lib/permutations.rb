def permutations(string)
  raise ArgumentError.new("The given input was not a string") if !string.is_a?(String)
  all = []
  perms = string.split("").repeated_permutation(string.length).to_a.each do |perm|
    if perm.sort.join("") == string
      all << perm if !all.include?(perm)
    end
  end
   all.map {|perm| perm.join}
end