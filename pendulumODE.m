function theta = pendulumODE(B, ZAxis, th0, dthdz0)

len = length(ZAxis);
theta = zeros(len,length(th0));
dthdz = zeros(len,length(th0));
theta(1,:) = th0;
dthdz(1,:) = dthdz0;
h = ZAxis(2) - ZAxis(1);

for k=1:len-1
    F0 = rhs(B(k), theta(k,:));
    theta(k + 1,:) = theta(k,:) + dthdz(k,:) * h + h / 2.0 * F0 * h;
    F1 = rhs(B(k + 1), theta(k + 1,:));
    theta(k + 1,:) = theta(k,:) + dthdz(k,:) * h + h / 6.0 * F0 * h + h / 3.0 * F1 * h;
    dthdz(k + 1,:) = dthdz(k,:) + h / 2.0 * (F0 + F1);
end

end

function F = rhs(B, th)

F = imag(B * exp(1i * th));

end

