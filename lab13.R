print("Speed of Shot?") 
v = scan(n=1)
print("Angle of Shot?") 
theta = scan(n=1)
print("Step Size?") 
h = scan(n=1)

x = c(0)
y = c(0)
vx = v * cos((pi*theta) / 180)
vy = v * sin((pi*theta) / 180)

g = 9.8

while (tail(y, n=1) >= 0) {
  y <- c(y, (tail(y, n=1) + h * vy))
  x <- c(x, (tail(x, n=1) + h * vx))
  vy = vy - h*g
}

plot(x, y, xlim = c(0,50), ylim = c(0,20), main="Plot of Cannon Trajectories" )
