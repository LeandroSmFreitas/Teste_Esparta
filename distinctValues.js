const DistinctValues = (a) => {
    let distinctNumbers = {}
    
    let numberOfDistinctNumbers = 0
    for(let index = 0; index < a.length; index++){
        if(!distinctNumbers[`${a[index]}`]){
            distinctNumbers[`${a[index]}`] = 1
        }
    }
    
    for(let value in distinctNumbers){
        numberOfDistinctNumbers++
    }
    return numberOfDistinctNumbers

}

console.log(DistinctValues([2,1,1,2,3,1,4,4,3,2,1,6,4,5,7,-1,-2,-3,-1,-2]))