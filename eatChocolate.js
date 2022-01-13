const EatChocolate = (n,m) => {
    let tableOfChocolate = {}
    let finishedEating = false
    let eaten = 0
    let count = 0
    for(let chocolateNumber = 0; chocolateNumber < n; chocolateNumber++){
        tableOfChocolate[chocolateNumber] = true
    }
    while(finishedEating === false){
        if(tableOfChocolate[count]){
            tableOfChocolate[count] = false
            eaten++
        }else{
            finishedEating = true
        }
        count = count + m
        if(count > n){
            count = count - n
        }
    }

    return eaten

}

console.log(EatChocolate(10,4))