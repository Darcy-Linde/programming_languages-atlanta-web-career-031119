# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }


# convert to this format
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, name|
<<<<<<< HEAD
    if !new_hash.has_key?(name)
      new_hash.merge!(name)
    end
  end
  
  new_hash.each do |name, contents|
     contents[:style] = []
  end
  
  new_hash.each do |name, contents|
    if languages[:oo].has_key?(name)
      contents[:style] << :oo
    end
    if languages[:functional].has_key?(name)
      contents[:style] << :functional
    end
=======
    new_hash.merge!(name)
  end
  
  languages.each do |type, name|
    new_hash[name] = {:style => [type]}
>>>>>>> dd38fd1cea4c1fe171f89321c1b2c6b5213d74ae
  end
  
  new_hash
end
