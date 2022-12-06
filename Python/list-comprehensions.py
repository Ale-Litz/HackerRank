#https://www.hackerrank.com/challenges/list-comprehensions/problem?isFullScreen=true

if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())

i = 0
j = 0
k = 0
save = []
dist = set()

for k in range(0,z+1):
    if (i+j+k) != n:
        save.append([i,j,k])
    for j in range(0,y+1):
        if (i+j+k) != n:
            save.append([i,j,k])
        for i in range(0,x+1):
            if (i+j+k) != n:
                save.append([i,j,k])

dist = [ele for ele in save if not(tuple(ele) in dist or dist.add(tuple(ele)))]
resp = sorted(dist, key = lambda chave: (len(chave), chave)) 
print(resp)
