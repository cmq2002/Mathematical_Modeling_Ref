format rational;
lamda1_FORMULA=@(a, b, c, d) (a + d - sqrt(4.*b.*c + (a.^2) - 2.*a.*d + d.^2))/(2);
lamda2_FORMULA=@(a, b, c, d) (a + d + sqrt(4.*b.*c + (a.^2) - 2.*a.*d + d.^2))/(2);
RReal_FORMULA=@(a, b, R0, J0, lamda1, lamda2) ( ((a.*R0 + b.*J0 - lamda2.*R0)/(lamda1 - lamda2)).*exp(lamda1) ) - ( ((b.*J0 + (a - lamda1).*R0)/(lamda1 - lamda2)).*exp(lamda2) );
JReal_FORMULA=@(a, b, R0, J0, lamda1, lamda2) ((lamda1 - a).*((a.*R0 + b.*J0 - lamda2.*R0)/(b.*(lamda1 - lamda2))).*exp(lamda1)) - ((lamda2 - a).*((b.*J0 + R0.*(a - lamda1))/(b.*(lamda1 - lamda2))).*exp(lamda2));
a=      [1      2       2       1       1       1       -2      -5      -5      -5];
b=      [1      7       2       1       1       -1      5       2       1       1];
c=      [-2     -7      3       -2      -2      -2      -5      -2      -1      -3];
d=      [1     -2      -3      5       1       -0.5    2       5       -2      -5];
R0=     [1   1.35    1.5     1.25    1.35    1.35    1.35    1.35    1.35    1.35];
J0=     [2    -7      12      1       1       1       5       5       -5      -5];
lamda1= [0 0 0 0 0 0 0 0 0 0];
lamda2= [0 0 0 0 0 0 0 0 0 0];
R=      [0 0 0 0 0 0 0 0 0 0];
J=      [0 0 0 0 0 0 0 0 0 0];
str=["EagerBeaver_Hermit" "EagerBeaver_Hermit" "EagerBeaver_CautiousLover" "EagerBeaver_NarcissisticNerd" "EagerBeaver_NarcissisticNerd" "NarcissisticNerd_Hermit" "NarcissisticNerd_CautiousLover" "NarcissisticNerd_CautiousLover" "CautiousLover_Hermit" "CautiousLover_Hermit"];

for i = 1.0:+1.0:10.0
   lamda1(i)=lamda1_FORMULA(a(i), b(i), c(i), d(i))
   lamda2(i)=lamda2_FORMULA(a(i), b(i), c(i), d(i))
   disp(str(i))
   disp('lamda:')
   disp(sym(lamda1(i)))
   disp(sym(lamda2(i)))
   disp('R and J:')
   disp(sym(RReal_FORMULA(a(i), b(i), R0(i), J0(i), sym(lamda1(i)), sym(lamda2(i)))))
   disp(sym(JReal_FORMULA(a(i), b(i), R0(i), J0(i), sym(lamda1(i)), sym(lamda2(i)))))
end

fplot(@(t) (2.*cos(sqrt(2).*t) - sqrt(2).*sin(sqrt(2).*t)).*exp(t), [0 10], 'DisplayName','NL to EB')
hold on 
fplot(@(t) (cos(sqrt(2).*t) + sqrt(2).*sin(sqrt(2).*t)).*exp(t), [0 10], 'DisplayName','EB to NL')
hold off
grid on
legend
