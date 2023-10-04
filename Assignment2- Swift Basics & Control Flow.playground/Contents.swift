// 1. შექმენით ორი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ჯამი.

let number1: Int = 195756
let number2: Int = 23874835

print(number1 + number2)

// 2. შექმენით Int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა, და შეამოწმეთ არის თუ არა ეს რიცხვი 10-ზე მეტი და 20-ზე ნაკლები ან ტოლი, 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი, 50-ზე მეტი და 100-ზე ნაკლები ან ტოლი, 100-ზე მეტი და შედეგი დაბეჭდეთ.

let number3 = 33

if number3 > 10 && number3 <= 20 {
    print("ეს რიცხვი არის 10-ზე მეტი და 20-ზე ნაკლები ან ტოლი")
} else if number3 > 20 && number3 <= 50 {
    print("ეს რიცხვი არის 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი")
} else if number3 > 50 && number3 <= 100 {
    print("ეს რიცხვი არის 50-ზე მეტი და 100-ზე ნაკლები ან ტოლი")
} else if number3 > 100 {
    print("ეს რიცხვი არის 100-ზე მეტი")
}

// 3. for-in ციკლის გამოყენებით, დაბეჭდეთ რიცხვები 1-იდან 20-ამდე. რიცხვები ეწეროს ერთ ხაზზე, გამოყოფილი იყოს სფეისებით. შედეგი: 1 2 3 4...

for numbers in 1..<20 {
    print(numbers, terminator: " ")
}
print("")

// 4. while ციკლის გამოყენებით, 1-იდან 100-ამდე დაბეჭდეთ ყველა კენტი რიცხვის ჯამი.

var numbers: Int = 1
var result: Int = 0

while numbers < 100 {
    if numbers % 2 != 0 {
        result += numbers
    }
    numbers += 1
}
print(result)

// 5. შექმენით String ტიპის ცვლადი, და ციკლის გამოყენებით დაარევერსეთ ეს ცვლადი, მაგ: თუ გვაქვს TBC Academy უნდა მივიღოთ ymedacA CBT.

let text1 = "TBC Academy"
var reversedText = ""

for letters in text1 {
    reversedText.insert(letters, at: reversedText.startIndex)
}
print(reversedText)

// 6. დაბეჭდეთ ყველა ორნიშნა რიცხვი რომელიც ერთნაირი ციფრებით არის შედგენილი.
for i in 10..<100 {
    if i % 11 == 0 {
        print(i, terminator: ", ")
    }
}
print("")

// 7. გაქვს 9 ნიშნა რიცხვი და დაბეჭდე შებრუნებული რიცხვი.
var number4 = 382795678
var reversedNumber4 = 0

while number4 != 0 {
    reversedNumber4 = reversedNumber4 * 10
    reversedNumber4 = reversedNumber4 + number4 % 10
    number4 /= 10
}
print(reversedNumber4)

// 8. შექმენით bool-ეან ცვლადი, მაგალითად: isNumberFound და while loop-ის გამოყენებით იპოვეთ პირველი რიცხვი რომელიც იყოფა 5-ზეც და 9-ზეც ერთდროულად. 1-იდან დაიწყეთ ათვლა.

var isNumberFound = false
var counter = 1

while !isNumberFound {
    if (counter % 5 == 0) && (counter % 9 == 0) {
        isNumberFound = true
        print(counter)
    }
    counter += 1
}

// 9. შექმენი String ცვლადი მაგალითად month, რომელსაც მიანიჭებ თვის მნიშვნელობას, მაგალითად: "march" და switch statement-ის გამოყენებით დაბეჭდეთ წელიწადის რა დროა.
var month = "August"

switch month {
case "December", "January", "February":
    print("It's winter now")
case "March", "April", "May":
    print("It's spring now")
case "June", "July", "August":
    print("It's summer now")
case "September", "October", "November":
    print("It's autumn now")
default:
    print("That is not a month")
}

// 10. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
var arr = ["red", "yellow", "green"]
var counter1 = 0

while counter1 >= 0 {
    switch arr[counter1] {
    case "red":
        print("🔴->", terminator: "")
    case "yellow":
        print("🟡->", terminator: "")
    case "green":
        print("🟢->", terminator: "")
    default:
        print("")
    }
    counter1 += 1
    if counter1 % 3 == 0 {
        counter1 = 0
    }
}
