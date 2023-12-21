import sys

class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        l = len(prices)
        minprice = sys.maxsize
        maxpro = 0
        for i in range(l):
            minprice = min(minprice, prices[i])
            maxpro = max(maxpro, prices[i]-minprice)
        return maxpro
        