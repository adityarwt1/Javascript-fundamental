class SmartPhone {
  /**
   *
   * @param {string} modelName
   * @param {string} proccesor
   * @param {number} year
   */
  constructor(modelName, proccesor, year) {
    this.modelName = modelName;
    this.proccesor = proccesor;
    this.year = year;
  }

  getModelName() {
    return this.modelName;
  }

  getProccessorName() {
    return this.proccesor;
  }

  getYearOfLaunch() {
    return this.year;
  }
}

const phone = new SmartPhone("Iqoo z7 Pro", "Dimensity 7200", 2025);

console.log(phone.getModelName());
console.log(phone.getProccessorName());
console.log(phone.getYearOfLaunch());
