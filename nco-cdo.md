# NCO and CDO

Documentation : http://www.idris.fr/media/ada/cdo.pdf

 - compute an increment : ```ncap2 -s 'incx=nav_lon(:,1:$x.size-1)-nav_lon(:,0:$x.size-2)' eORCA05_coordinates.nc incx.nc```
 - get rid of length 1 dimension : ``` ncwa -a time_counter $filei $fileo```
 
