R=Hash[?I,1,?V,5,?X,10,?L,50,?C,100,?D,500,?M,1000]
def r s,t=0
s.gsub(/(((((I?V?)?X?)?L?)?C?)?D?)?M?/){|m|o,n=R[m[0]]||0,R[m[1]]||0;o<n&&o=-o;t+=n+o}
t
end