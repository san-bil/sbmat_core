function out=callerfunc()

mystack=dbstack;
out = mystack(3).name;