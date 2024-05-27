%% Discrete
function dFnT_output = DFnT(input_signal)
%	The Fresnelet transform is a  numerical  implementation
%	of the continuous unitary Fresnel transform according to the equation (5)
%X. Ouyang and J. Zhao, "Orthogonal Chirp Division Multiplexing," in IEEE 
% Transactions on Communications, 
% vol. 64, no. 9, pp. 3946-3957, Sept. 2016, 
% doi: 10.1109/TCOMM.2016.2594792.
%
%
%
%Muneeb Ahmad
%muneeb.ahmad@kumoh.ac.kr
%This work was supported by the Brain Korea 21 FOUR Project 
% (Dept. of IT Convergence Engineering, Kumoh National Institute of Technology).
%MERIT (Medical, Electronic, Robotic, IT) Convergence Innovation Talents 
% Training Group for Smart Manufacturing Innovation

    [numRows, numCols] = size(input_signal);
    N = numRows; % Assuming DFnT is applied to each column individually
    dFnT_matrix = zeros(N, N);

    % Constructing the DFnT matrix
    for m = 1:N
        for n = 1:N
            if mod(N, 2) == 0  % For even N
                dFnT_matrix(m, n) = (1/sqrt(N)) * exp(-1j * pi/4) * exp(1j * pi/N * (m - n)^2);
            else  % For odd N
                dFnT_matrix(m, n) = (1/sqrt(N)) * exp(-1j * pi/4) * exp(1j * pi/N * (m + 0.5 - n)^2);
            end
        end
    end

    % Applying the DFnT to each column of the input signal
    dFnT_output = zeros(size(input_signal));
    for col = 1:numCols
        dFnT_output(:, col) = dFnT_matrix * input_signal(:, col);
    end
end
