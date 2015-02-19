class Complement
  COMPLIMENTS = { "G" => "C",
                  "C" => "G",
                  "T" => "A",
                  "A" => "U" }


  def self.of_dna(dna_string)
    complement = ''

    dna_string.length.times do |i|
      complement << COMPLIMENTS[dna_string[i]]
    end

    complement
  end

  def self.of_rna(rna_string)
    complement = ''

    rna_string.length.times do |i|
      complement << COMPLIMENTS.key(rna_string[i])
    end

    complement
  end
end
