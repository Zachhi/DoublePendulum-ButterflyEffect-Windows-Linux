SFML = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio 
CC = g++
CFLAGS = -c
DEBUG = -g
objects = PendulumSection.o Pendulum.o Simulation.o main.o
all: DoublePendulum link

DoublePendulum: $(objects)

PendulumSection.o : DoublePendulum/src/PendulumSection.cpp DoublePendulum/src/PendulumSection.h
	$(CC) -IsfmlFiles/include $(CFLAGS) DoublePendulum/src/PendulumSection.cpp

Pendulum.o : DoublePendulum/src/Pendulum.cpp DoublePendulum/src/Pendulum.h
	$(CC) -IsfmlFiles/include $(CFLAGS) DoublePendulum/src/Pendulum.cpp

Simulation.o : DoublePendulum/src/Simulation.cpp DoublePendulum/src/Simulation.h
	$(CC) -IsfmlFiles/include $(CFLAGS) DoublePendulum/src/Simulation.cpp

main.o : DoublePendulum/src/main.cpp 
	$(CC) -IsfmlFiles/include $(CFLAGS) DoublePendulum/src/main.cpp

link: 
	$(CC) $(objects) -o run -LsfmlFiles/lib $(SFML)

clean:
	rm edit $(objects)