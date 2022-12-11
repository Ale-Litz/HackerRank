#https://www.hackerrank.com/challenges/finding-the-percentage/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    
    for i in student_marks.keys():
        if i == query_name:
            mean = sum(student_marks.get(i))/len(student_marks.get(i))
            print(f'{mean:.2f}')