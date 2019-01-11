points =([
    [0 0 0]; 
    [0 0 2]; 
    [0 3 2]; 
    [0 3 0]; 
    [5 3 0]; 
    [5 0 0]]);

alpha = 7*pi/6;
betta = 3*pi/2;

points = points * rotateY(alpha);
points = points * rotateZ(betta)

x = points(:,1);
y = points(:,2);
z = points(:,3);
k = boundary(points)
hold on;
trisurf(kb, x, y,z,'Facecolor','red','FaceAlpha',0.1)


function rotate = rotateX(x)
   rotate = ([
       [1 0 0]; 
       [0 cos(x) -sin(x)]; 
       [0 sin(x) cos(x)]]); 
end

function rotate = rotateY(y)
    rotate = ([
       [cos(y) 0 -sin(y)]; 
       [0 1 0]; 
       [sin(y) 0 cos(y)]]); 
end

function rotate = rotateZ(z)
    rotate = ([
       [cos(z) sin(z) 0]; 
       [-sin(z) cos(z) 0]; 
       [0 0 1]]); 
end