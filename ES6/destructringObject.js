const HIGH_TEMPERATURES = {
    yesterday: 75,
    today: 77,
    tomorrow: 80
  };
  
  // Only change code below this line
  
  const {today} = HIGH_TEMPERATURES; //// we can access the object inside element by using curly bracet on the site 
  const {tomorrow} = HIGH_TEMPERATURES;

  //also we can use this another syntax to access the inside as a variable

  const {today: highToday, tomorrow: highTomorrow} = HIGH_TEMPERATURES;
  
  // Only change code above this line



  //// 
  //
  const LOCAL_FORECAST = {
    yesterday: { low: 61, high: 75 },
    today: { low: 64, high: 77 },
    tomorrow: { low: 68, high: 80 }
  };
  
  // Only change code below this line
    
  const {today: {low: lowToday}} = LOCAL_FORECAST;
  const {today: {high}} = LOCAL_FORECAST;/// this the difreent way to access the object elment in the difrent level
  
  // Only change code above this line


