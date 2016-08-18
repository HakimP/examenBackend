a = Salon.create(nombre:'Salon 1')
b = Salon.create(nombre:'Salon 2')
c = Salon.create(nombre:'Salon 3')
d = Salon.create(nombre:'Salon 4')

c1 = Curso.create(nombre:'Curso 1', fecha:Time.zone.parse('1988-05-09'),precio:10.5, salon:a)
c2 = Curso.create(nombre:'Curso 2', fecha:Time.zone.parse('1988-05-10'),precio:20.5, salon:b)
c3 = Curso.create(nombre:'Curso 3', fecha:Time.zone.parse('1988-05-11'),precio:20.5, salon:c)
c4 = Curso.create(nombre:'Curso 4', fecha:Time.zone.parse('1988-05-12'),precio:20.5, salon:d)

al1 = Alumno.create(nombre:'Armando',edad:24,curso:c1)
al2 = Alumno.create(nombre:'Pedro',edad:27,curso:c1)
al3 = Alumno.create(nombre:'Hakim',edad:18,curso:c2)
al4 = Alumno.create(nombre:'Karen',edad:16,curso:c2)
al5 = Alumno.create(nombre:'Karina',edad:30,curso:c3)
al6 = Alumno.create(nombre:'Axel',edad:28,curso:c3)
al7 = Alumno.create(nombre:'Daniel',edad:21,curso:c4)
al8 = Alumno.create(nombre:'Leo',edad:15,curso:c4)
