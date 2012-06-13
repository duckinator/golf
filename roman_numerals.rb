#!/usr/bin/env ruby

R={?I=>1,?V=>5,?X=>10,?L=>50,?C=>100,?D=>500,?M=>1000}
def r s;
  t=0
  #s.gsub(/([IVXLCD]M|[IVXLC]D|[IVXL]C|[IVX]L|[IV]X|IV|[IVXLCDM])/){o,n=R[$1[0]],R[$1[1]]||0;o<n ? t+=n-o :t+=n+o}
  s.gsub(/((((((I?V?)?X?)?L?)?C?)?D?)?M?)/){o,n=R[$1[0]]||0,R[$1[1]]||0;o<n ? t+=n-o :t+=n+o}
  t
end

puts r('MCMXLIV'), 1944
puts r('XLI'), 41
puts r('MDCCCCX'), 1910

