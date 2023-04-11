void main() {
  final List<int> pinCode = [1,1,2,2,5,6];
  
  print(checkPin(pinCode));
}


bool checkPin(List<int> pinCode){
   if(pinCode.length <6 ){
    return false;
  }
  
   var sequenceCount = 0;
   var duplicateCount = 0;
   var  map = <int,int> {};
  
    
  for(var i=0;i<pinCode.length-1;i++){

    if(i!=0 && i != pinCode.length-1){

     if(pinCode[i+1] == pinCode[i]+1){
       sequenceCount+=1;
       if(sequenceCount>2){
         return false;
       }
     }
    
    if(pinCode[i+1] == pinCode[i]){
      duplicateCount +=1;
        if(duplicateCount>2){
         return false;
       }
    }
    } 
    
    map[pinCode[i]] = (map[pinCode[i]] ?? 0)+1;
    
  }
  
  if(map.values.where((e)=> e>=2).toList().length >=2){
    return false;
  }

  return true;
}