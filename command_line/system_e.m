function [res,stdout]=system_e(cmd)

[res,stdout] = system(cmd,'-echo');