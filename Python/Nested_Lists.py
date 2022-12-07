#https://www.hackerrank.com/challenges/nested-list/problem?isFullScreen=true

if __name__ == '__main__':
    lista = []
    maior = []

    for _ in range(int(input())):
        name = input()
        score = float(input())
        lista.append([score,name])
    lista.sort()
    
    for i in range(len(lista)):
        maior.append(lista[i][0])
        maior = [*set(maior)]
        maior.sort()
    
    for i in range(len(lista)):
        if (lista[i][0]) == (maior[1]):
            print(lista[i][1])
