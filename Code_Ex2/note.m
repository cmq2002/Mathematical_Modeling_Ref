lamda1_FORMULA=@(a, b, c, d) (a + d - sqrt(4.*b.*c + (a.^2) - 2.*a.*d + d.^2))/(2);
lamda2_FORMULA=@(a, b, c, d) (a + d + sqrt(4.*b.*c + (a.^2) - 2.*a.*d + d.^2))/(2);
RReal_FORMULA=@(a, b, R0, J0, lamda1, lamda2) ( ((a.*R0 + b.*J0 - lamda2.*R0)/(lamda1 - lamda2)).*exp(lamda1) ) - ( ((b.*J0 + (a - lamda1).*R0)/(lamda1 - lamda2)).*exp(lamda2) );
JReal_FORMULA=@(a, b, R0, J0, lamda1, lamda2) ((lamda1 - a).*((a.*R0 + b.*J0 - lamda2.*R0)/(b.*(lamda1 - lamda2))).*exp(lamda1)) - ((lamda2 - a).*((b.*J0 + R0.*(a - lamda1))/(b.*(lamda1 - lamda2))).*exp(lamda2));
a=[7 2 2];
b=[2 7 2];
c=[-2 -7 3];
d=[-7 -2 -3];
R0=[1.35 1.35 1.5];
J0=[-14 -7 12];
lamda1=[0 0 0];
lamda2=[0 0 0];
R=[0 0 0];
J=[0 0 0];
str=["EagerBeaver_Hermit" "EagerBeaver_Hermit" "EagerBeaver_CautiousLover"];

for i = 1.0:+1.0:3.0
   lamda1(i)=sym(lamda1_FORMULA(a(i), b(i), c(i), d(i)))
   lamda2(i)=sym(lamda2_FORMULA(a(i), b(i), c(i), d(i)))
end
for i = 1.0:+1.0:3.0
   disp(str(i))
   disp('lamda:')
   disp(sym(lamda1(i)))
   disp(sym(lamda2(i)))
   disp('R and J:')
   disp(sym(RReal_FORMULA(a(i), b(i), R0(i), J0(i), sym(lamda1(i)), sym(lamda2(i)))))
   disp(sym(JReal_FORMULA(a(i), b(i), R0(i), J0(i), sym(lamda1(i)), sym(lamda2(i)))))
end
