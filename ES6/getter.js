class Thermostat {
    constructor(fahrenheit) {
      this._fahrenheit = fahrenheit;
    }
    
    get temperature() { /// this is new think to make result from it for the the we you want this clearing my dout like i need to make tha value update when vaulue get updated
      return (5 / 9) * (this._fahrenheit - 32);
    }
    
    set temperature(celsius) {
      return this._fahrenheit = (celsius * 9.0) / 5 + 32;
    }
  }
  const thermos = new Thermostat(76); // Setting in Fahrenheit scale
  let temp = thermos.temperature; // 24.44 in Celsius
  thermos.temperature = 26;
  temp = thermos.temperature; // 26 in Celsius