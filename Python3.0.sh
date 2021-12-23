      import numpy as np
      from numpy import matrix
      import random
      print("Каким методом решить матрицу?")
      print("Список команд:")
      print("1. Метод Крамера")
      print("2. Обратная матрица")
      print("3. Список команд")
      print("0. Тут наши полномочия всё (конец)... :)")
      action = 24

      #Метод Крамера
      while action !=0:
          action= int(input())
          if action == 1:
              print("Как хотите заполнить матрицу?")
              print("1. Ручками")
              print("2. Мне лень пусть сам заполняет")
              ad=int(input())
              #Заполнение ручками
              if ad == 1:
                  a=float(input("Введите число а = "))
                  b=float(input("Введите число b = "))
                  c=float(input("Введите число c = "))
                  a1=float(input("Введите число а1 = "))
                  b1=float(input("Введите число b1 = "))
                  c1=float(input("Введите число c1 = "))
                  a2=float(input("Введите число а2 = "))
                  b2=float(input("Введите число b2 = "))
                  c2=float(input("Введите число c2 = "))
                  d=float(input("Введите число d = "))
                  d1=float(input("Введите число d1 = "))
                  d2=float(input("Введите число d2 = "))

                  A1 = [[a, b, c], [a1, b1, c1], [a2, b2, c2]]
                  B1 = [d, d1, d2]
                  def Kram(A, B):
                      m = len(A)
                      op = np.linalg.det(A)
                      r = list()
                      for i in range(m):
                          VM = np.copy(A)
                          VM[:, i] = B
                          r.append(np.linalg.det(VM)/op)
                      return r 
                  X3 = Kram(A1, B1)
                  print(X3)
                  print(np.matmul(A1, X3))
                  print(X3)
                  print(np.matmul(A1, X3))
                  print("Выберите действие - ")
                  print("Список команд:")
                  print("1. Метод Крамера")
                  print("2. Метод обратной матрицы")
                  print("3. Список команд")
                  print("0. Тут наши полномочия всё (конец)...:)")
              #Заполнение не ручками    
              elif ad == 2: 
                  A1 = [[random.randint(1,100) for i in range (3)],[random.randint(1,100) for i in range (3)],[random.randint(1,100) for i in range (3)]]
                  B1 = [random.randint(1,100) for i in range (3)]
                  def Kram(A, B):
                      m = len(A)
                      op = np.linalg.det(A)
                      r = list()
                      for i in range(m):
                          VM = np.copy(A)
                          VM[:, i] = B
                          r.append(np.linalg.det(VM)/op)
                      return r 
                  X3 = Kram(A1, B1)
                  print(X3)
                  print(np.matmul(A1, X3))
                  print("Выберите действие - ")
                  print("Список команд:")
                  print("1. Метод Крамера")
                  print("2. Метод обратной матрицы")
                  print("3. Список команд")
                  print("0. Тут наши полномочия всё (конец)...:)")
      #Обратная матрица
          if action == 2:
              print("Как хотите заполнить матрицу?")
              print("1. Ручками")
              print("2. Мне лень пусть сам заполняет")
              ad =int(input())
              #Заполнение ручками
              if ad ==1:
                  a=float(input("Введите число а = "))
                  b=float(input("Введите число b = "))
                  c=float(input("Введите число c = "))
                  a1=float(input("Введите число а1 = "))
                  b1=float(input("Введите число b1 = "))
                  c1=float(input("Введите число c1 = "))
                  a2=float(input("Введите число а2 = "))
                  b2=float(input("Введите число b2 = "))
                  c2=float(input("Введите число c2 = "))

                  C = matrix ([[a, a1, a2],[b, b1 , b2],[c, c1, c2]]) 
                  print("Матрица до изменения\n",C)
                  print ("Изменненая матрица\n",C.T)#Транспонированная 
                  print("Обратная матрица\n",C.I)#инверсия
                  print("Выберите действие - ")
                  print("Список команд:")
                  print("1. Метод Крамера")
                  print("2. Метод обратной матрицы")
                  print("3. Список команд")
                  print("0. Тут наши полномочия всё (конец)...:)")
            #Заполнение не ручками
              elif ad ==2:
                  C = matrix ([[random.randint(1,100) for i in range (3)],[random.randint(1,100) for i in range (3)],[random.randint(1,100) for i in range (3)]]) 
                  print("Матрица до изменения\n",C)
                  print ("Изменненая матрица\n",C.T)#Транспонированная 
                  print("Обратная матрица\n",C.I)#инверсия
                  print("Выберите действие - ")
                  print("Список команд:")
                  print("1. Метод Крамера")
                  print("2. Метод обратной матрицы")
                  print("3. Список команд")
                  print("0. Тут наши полномочия всё (конец)...:)")

          elif action == 3:
              print("Список команд:")
              print("1. Метод Крамера")
              print("2. Метод обратной матрицы")
              print("3. Список команд")
              print("0. Тут наши полномочия всё (конец)...:)")


          elif action == 0:
              print("Завершение работы...: )")
