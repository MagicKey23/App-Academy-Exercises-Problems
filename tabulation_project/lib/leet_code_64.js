// Work through this problem on https://leetcode.com/problems/minimum-path-sum/ and use the specs given there.
// Feel free to use this file for scratch work.

function minPathSum(grid) {
    let row = grid.length;
    let column = grid[0].length;
    
    let table = new Array(row).fill().map(() => new Array(column).fill(Infinity));    
    table[0][0] = grid[0][0];
    for (let i = 0; i < row; i++){
        for(let j = 0; j < column; j++){

            //Moving Down
            if(i < row-1){
                 table[i + 1][j] = Math.min(table[i][j] + grid[i + 1][j], table[i + 1][j]);
            }
            //Moving Right
            if (j < column - 1) {
                 table[i][j + 1] = Math.min(table[i][j] + grid[i][j + 1], table[i][j + 1]);
            }
          
          
        }
    }
    return table[row-1][column-1];

}
