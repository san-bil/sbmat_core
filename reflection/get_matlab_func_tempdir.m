function out = get_matlab_func_tempdir()

mycaller=callerfunc();
out = path_join('/tmp',['matlab_' mycaller]);