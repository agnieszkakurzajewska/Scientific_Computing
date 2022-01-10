#Agnieszka Kurzajewska
#exec '/Volumes/Julia-1.7.1/Julia-1.7.app/Contents/Resources/julia/bin/julia'
# 244994
include("algorithms.jl")

#16

#data reading
(A,n,l) = Algorithms.readData("data/Dane16_1_1/A.txt")
b = Algorithms.readVectorfromRight("data/Dane16_1_1/b.txt")

#gauss

#no choice
gauss16 = Algorithms.calculateGaussWithoutChoice(A, n, l, b)
@time Algorithms.calculateGaussWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_without_choice_16.txt", gauss16, length(gauss16))

#choice
choiceGauss16 = Algorithms.calculateGaussWithChoice(A, n, l, b)
@time Algorithms.calculateGaussWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_with_choice_16.txt", choiceGauss16, length(choiceGauss16))

#lu 

#no choice
lu16 = Algorithms.calculateLUWithoutChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_without_choice_16.txt", lu16, length(lu16))

#choice
choiceLU16 = Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_with_choice_16.txt", choiceLU16, length(choiceLU16))



#10 000

#data reading
(A,n,l) = Algorithms.readData("data/Dane10000_1_1/A.txt")
b = Algorithms.readVectorfromRight("data/Dane10000_1_1/b.txt")

#gauss

#no choice
gauss10000 = Algorithms.calculateGaussWithoutChoice(A, n, l, b)
@time Algorithms.calculateGaussWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_without_choice_10000.txt", gauss10000, length(gauss10000))

#choice
choiceGauss10000 = Algorithms.calculateGaussWithChoice(A, n, l, b)
@time Algorithms.calculateGaussWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_with_choice_10000.txt", choiceGauss10000, length(choiceGauss10000))

#lu

#no choice
lu10000 = Algorithms.calculateLUWithoutChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_without_choice_10000.txt", lu10000, length(lu10000))

#choice
choiceLU10000 = Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_with_choice_10000.txt", choiceLU10000, length(choiceLU10000))



#50 000

#data reading
(A,n,l) = Algorithms.readData("data/Dane100000_1_1/A.txt")
b = Algorithms.readVectorfromRight("data/Dane100000_1_1/b.txt")

#gauss

#no choice
gauss100000 = Algorithms.calculateGaussWithoutChoice(A, n, l, b)
@time Algorithms.calculateGaussWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_without_choice_100000.txt", gauss100000, length(gauss100000))

#choice
choiceGauss100000 = Algorithms.calculateGaussWithChoice(A, n, l, b)
@time Algorithms.calculateGaussWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_with_choice_100000.txt", choiceGauss100000, length(choiceGauss100000))

#lu

#no choice
lu100000 = Algorithms.calculateLUWithoutChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_without_choice_0000.txt", lu100000, length(lu100000))

#choice
choiceLU100000 = Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_with_choice_100000.txt", choiceLU100000, length(choiceLU100000))


#100 000

#data reading
(A,n,l) = Algorithms.readData("data/Dane100000_1_1/A.txt")
b = Algorithms.readVectorfromRight("data/Dane100000_1_1/b.txt")

#gauss

#no choice
gauss100000 = Algorithms.calculateGaussWithoutChoice(A, n, l, b)
@time Algorithms.calculateGaussWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_without_choice_100000.txt", gauss100000, length(gauss100000))

#choice
choiceGauss100000 = Algorithms.calculateGaussWithChoice(A, n, l, b)
@time Algorithms.calculateGaussWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/gauss_with_choice_100000.txt", choiceGauss100000, length(choiceGauss100000))

#lu

#no choice
lu100000 = Algorithms.calculateLUWithoutChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_without_choice_100000.txt", lu100000, length(lu100000))

#choice
choiceLU100000 = Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
@time Algorithms.calculateLUWithoutChoiceWithChoice(A, n, l, b)
Algorithms.saveResultToFile("results/lu_with_choice_100000.txt", choiceLU100000, length(choiceLU100000))
