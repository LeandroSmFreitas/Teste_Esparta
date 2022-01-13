const Paired = (a) => {
    let empairNumbers = {}
    
    for(let index = 0; index < a.length; index++){
        if(!empairNumbers[`${a[index]}`]){
            empairNumbers[`${a[index]}`] = 1
        }else{
            empairNumbers[`${a[index]}`]++
        }
    }
    
    for(let value in empairNumbers){
        if(empairNumbers[value] === 1){
            return value
        }
    }

}

console.log(Paired([1,3,5,1,3,5,7,9,11,13,9,7,11]))