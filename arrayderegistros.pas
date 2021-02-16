Program ArrayDeRegistros;

CONST
	NUM_ALUMNOS = 4;

TYPE
	tRAlumnos = record
		nombre,apellidos:string;
		edad,curso,num_asignaturas:integer;
		abono_mensual:real;
	end;
	tAlumnos = array[1..NUM_ALUMNOS] of tRAlumnos;

VAR
	alumnos:tAlumnos;

PROCEDURE insertar(VAR alumnos:tAlumnos);
	VAR i:integer;
		Begin 
			for i:=1 to NUM_ALUMNOS do
				begin
					with alumnos[i] do
						begin
							writeln('Alumno',i,'-');
							write('Nombre: '); readln(nombre);
							write('Apellidos: '); readln(apellidos);
							write('Edad: '); readln(edad);
							write('Curso: '); readln(curso);
							write('Numero de asignaturas: '); readln(num_asignaturas);
							write('Abono mensual: '); readln(abono_mensual);
							writeln;
							writeln;
						end;
				end;
		End;

PROCEDURE mostrar(alumnos:tAlumnos);
	VAR i:integer;
		Begin 
			for i:=1 to NUM_ALUMNOS do
				begin
					with alumnos[i] do
						begin
							writeln('Alumno',i,'-');
							writeln('Nombre: ',nombre);
							writeln('Apellidos: ',apellidos);
							writeln('Edad: ',edad);
							writeln('Curso: ',curso);
							writeln('Numero de asignaturas: ',num_asignaturas);
							writeln('Abono mensual: ',abono_mensual:0:2);
							writeln;
							writeln;
						end;
				end;
		End;

BEGIN

	insertar(alumnos);
	mostrar(alumnos);

END.