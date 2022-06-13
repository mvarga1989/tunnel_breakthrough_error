function sigma=tunnel_breakthrough_error(n,s,sigma_angle)
% The standard displacement error (sigma) of a geodetic station in tunneling in a
% direction normal to the axis of the tunnel (lateral error). This error describes tunnel
% breakthrough error (offset), and can be used in tunnel geodetic network pre-analysis.
% Vectorized.
% Version: 13 Jun 22
% Input:   n - the number of the traverse legs
%          s - the length of the open tunnel traverse [meter]
%          sigma_angle- the standard deviation (uncertainty) of angle measurements [radians]
% Output:  sigma - standard error (sigma) of a geodetic station in the tunnel [meter]
% Reference: Chrzanowski, A., 1981. Optimization of the breakthrough accuracy in tunnelling surveys. Canadian Surveyor 35 (1), 5 – 16.
% Keywords: tunneling, surveying, standard accuracy, breakthrough error
%
% Copyright (c) 2022, Matej Varga
% All rights reserved.
% Email: mvarga1989@gmail.com
sigma = n.*(n+1).*(2.*n+1)./6.*s.^2.*sigma_angle.^2;

end
