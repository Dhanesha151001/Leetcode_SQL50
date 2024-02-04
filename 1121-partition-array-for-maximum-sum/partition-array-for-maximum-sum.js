/**
 * @param {number[]} arr
 * @param {number} k
 * @return {number}
 */
function maxSumAfterPartitioning(arr, k) {
    const n = arr.length;
    const dp = new Array(n).fill(0);

    for (let i = 0; i < n; i++) {
        let maxVal = arr[i];
        for (let j = 1; j <= k && i - j + 1 >= 0; j++) {
            maxVal = Math.max(maxVal, arr[i - j + 1]);
            dp[i] = Math.max(dp[i], (i - j >= 0 ? dp[i - j] : 0) + maxVal * j);
        }
    }

    return dp[n - 1];
}

// Example 1
const arr1 = [1, 15, 7, 9, 2, 5, 10];
const k1 = 3;
console.log(maxSumAfterPartitioning(arr1, k1));  // Output: 84

// Example 2
const arr2 = [1, 4, 1, 5, 7, 3, 6, 1, 9, 9, 3];
const k2 = 4;
console.log(maxSumAfterPartitioning(arr2, k2));  // Output: 83

// Example 3
const arr3 = [1];
const k3 = 1;
console.log(maxSumAfterPartitioning(arr3, k3));  // Output: 1
