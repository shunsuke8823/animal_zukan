mammals = Category.find_or_create_by!(name: "哺乳類")
birds = Category.find_or_create_by!(name: "鳥類")
fish = Category.find_or_create_by!(name: "魚類")
amphibians = Category.find_or_create_by!(name: "両生類")
reptiles = Category.find_or_create_by!(name: "爬虫類")

Animal.find_or_create_by!(name: "犬") do |animal|
  animal.reading = "いぬ"
  animal.category = mammals
  animal.description = "犬は、食肉目イヌ科イヌ属に分類される哺乳類の一種である。ペットとしてよく飼われている。"
  animal.emoji = "🐶"
end

Animal.find_or_create_by!(name: "ペンギン") do |animal|
  animal.reading = "ぺんぎん"
  animal.category = birds
  animal.description = "ペンギンは、ペンギン目ペンギン科に属する鳥類の総称。主に南半球に生息する海鳥であり、飛ぶことができない。"
  animal.emoji = "🐧"
end

Animal.find_or_create_by!(name: "鮫") do |animal|
  animal.reading = "さめ"
  animal.category = fish
  animal.description = "サメ（鮫）は、軟骨魚綱板鰓亜綱に属する魚類のうち、鰓裂が体の側面に開くものの総称。鰓裂が下面に開くエイとは区別される。"
  animal.emoji = "🦈"
end

Animal.find_or_create_by!(name: "イモリ") do |animal|
  animal.reading = "いもり"
  animal.category = amphibians
  animal.description = "日本で「イモリ」と呼ばれているものは「アカハライモリ」であることが多く、このアカハライモリは有尾目イモリ科イモリ属に分類される両生類である。"
  animal.emoji = "🦎"
end

Animal.find_or_create_by!(name: "亀") do |animal|
  animal.reading = "かめ"
  animal.category = reptiles
  animal.description = "カメ（亀）は、爬虫綱カメ目に分類される生物の総称。甲羅を本格的に発達させたことで特徴づけられる一群で、現代まで継続して繁栄している。"
  animal.emoji = "🐢"
end
