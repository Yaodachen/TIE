function [tao,dqr,s]=controller(k,q,dq,i,alpha,a,C,p,Ni)
      tao2=0;
      tao1=-k*dq(:,i);
      if i==1
      for j=2:3
      tao2=tao2+a(i,j)*(q(:,i)-q(:,j));
      end
      else if i==2
      for j=1
      tao2=tao2+a(i,j)*(q(:,i)-q(:,j));
      end
      else if i==3
      for j=1:2
      tao2=tao2+a(i,j)*(q(:,i)-q(:,j));
      end
      else if i==4
      for j=5
      tao2=tao2+a(i,j)*(q(:,i)-q(:,j));
      end
      else if i==5
      for j=2
      tao2=tao2+a(i,j)*(q(:,i)-q(:,j));
      end
          end
          end
          end
          end
      end
      tao3=-p*alpha*k*tao2;
      tao4=-p*alpha*C*tao2;
      tao=tao1+tao3+tao4;
      dqr=(-p*alpha*tao2)'*[1;0];
      s=dq(1,i)-dqr;
      %tao=sign(alpha)*tao1+tao3+tao4;

