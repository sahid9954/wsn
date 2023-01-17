clc;
no_nodes=input('Enter the number of nodes: ');
net_length=input('Enter the length of network: ');
net_width=input('Enter the width of the network: ');  

for i=1:no_nodes                %using for loo[p to iterate the discreat locations of nodes].
    x_loc(i)=net_length*rand;   %discreat location of nodes in x axis.
    y_loc(i)=net_width*rand;    %discreat location of nodes in y axis.
    node_id(i)=i;               %id of the node to know which node communicate with other.

    plot(x_loc(i),y_loc(i),'b^','linewidth',2);%plot the graph for x and y with given linewidth.
    text(x_loc(i),y_loc(i)+10,['n',num2str(i)]);  %numbering the nodes with incrasing the iteration
    hold on;                                   %hold on the location of nodes.
    xlabel('network length');                  %x store length of network.
    ylabel('network width');
    grid on;                              
    pause(0.5);                             % hold on 0.5sec at a place.
end
source=round(no_nodes*rand);                %define the source n*rand(position).
if source==0                                %if source=0 due to round of the source than source will be 5.
    source=5;
end    
destination=round(no_nodes*rand);           %define destination.
if destination==0                           %if the destination is low
    destination=6;
end
figure(1);
plot(x_loc(source),y_loc(source),'r^','linewidth',3);%plot the graph for node of x(source).
text(x_loc(source),y_loc(source),'src');             %for nameing the x axis and y axis.
hold on;                                            %hold on the source.
plot(x_loc(destination),y_loc(destination),'r^','linewidth',3);%plot the node for node of y(destination).
text(x_loc(destination),y_loc(destination),'DEST');
