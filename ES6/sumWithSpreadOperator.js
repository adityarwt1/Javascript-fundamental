const sumWithSpreadOperator = (...n)=>{
    let total = 0;
        for(let i = 0;i<n.length; i++){
            total += n[i]
        }
        return total;
}