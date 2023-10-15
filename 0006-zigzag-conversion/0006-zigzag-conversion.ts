function convert(s: string, numRows: number): string {
  if (numRows === 1 || numRows >= s.length){
    return s;  
  }


  const result: string[] = new Array(numRows).fill('')

  let index: number = 0;
  let step: number = 1;

  for (const char of s) {
    result[index] += char;
    if(index === 0) {
      step=1;
    } else if ( index === numRows - 1) {
      step = -1
    }

    index += step
  }


  return result.join('')
};