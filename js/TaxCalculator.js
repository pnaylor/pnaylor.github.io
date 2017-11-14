class TaxCalculator {
  // Tracks ytd income added by month and estimated taxes
  constructor() {
    this.monthCount = 0;
    this.ytdIncome = 0;
    this.ytdTaxEstimate = 0;
  }
  
  // Input: income for a month, to add to ytd total
  addMonthIncome(monthIncome) {
    if (this.monthCount >= 12) {
      // possible exception for exceeding twelve months
    }
    this.ytdIncome += monthIncome;
    this.monthCount++;
  }

  // Output: tax liability for latest month, based on income and taxes paid ytd
  getMonthLiability() {
    let monthLiability = Math.round( this.ytdIncome * .2 ) - this.ytdTaxEstimate;
    if (monthLiability < 0) {
    	// only refund up to ytdTaxEstimate paid already
    	monthLiability = -Math.min( Math.abs(monthLiability), this.ytdTaxEstimate );
    }
    this.ytdTaxEstimate += monthLiability;
    return monthLiability;
  }
};

testTaxCalc = new TaxCalculator();

let sampleMonthIncomes = [86813, -27380, 36814, 96913, -135308, -162659, -113682, 213781, 291863, 173176, 223632, 136823]

let monthLiabilities = sampleMonthIncomes.map( function(monthIncome) {
  testTaxCalc.addMonthIncome(monthIncome)
  return testTaxCalc.getMonthLiability();
});

console.log( monthLiabilities.join(', ') );