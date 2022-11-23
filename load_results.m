BRe = load('resultsBRe.dat');
BIm = load('resultsBIm.dat');
JRe = load('resultsJRe.dat');
JIm = load('resultsJIm.dat');
g.z = load('Z.dat');
g.t = load('Time.dat');

g.B=complex(BRe, BIm);
g.J=complex(JRe, JIm);

clear BRe BIm JRe JIm