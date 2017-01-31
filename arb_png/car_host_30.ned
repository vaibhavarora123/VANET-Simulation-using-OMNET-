//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package arb_png;

import inet.common.figures.DelegateSignalConfigurator;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;

network car_host_30
{
    parameters:
        string hostType = default("AODVHost");
        string mediumType = default("IdealRadioMedium");
        @display("bgb=1000,500;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);
        @figure[rcvdPkText](type=indicatorText; pos=420,20; anchor=w; font=,20; textFormat="packets received: %g"; initialValue=0);
        @statistic[rcvdPk](source=hostD_rcvdPk; record=figure(count); targetFigure=rcvdPkText);
        @signal[hostD_rcvdPk];
        @delegatesignal[rcvdPk](source=hostD.udpApp[0].rcvdPk; target=hostD_rcvdPk);


    submodules:
        visualizer: IntegratedCanvasVisualizer {
            @display("p=17.136,71.568");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=16.128,116.928");
        }
        radioMedium: <mediumType> like IRadioMedium {
            @display("p=14.112,161.28");
        }
        figureHelper: DelegateSignalConfigurator {
            @display("p=17.136,276.19202");
        }
        hostA: <hostType> like INetworkNode {
            @display("p=15.059999,197.03499");
        }
        hostD: <hostType> like INetworkNode {
            @display("p=967.605,204.56499");
        }
        hostB: <hostType> like INetworkNode {
            @display("p=475.645,197.03499");
        }
        hostC: <hostType> like INetworkNode {
            @display("p=712.83997,267.315");
        }
        hostB1: <hostType> like INetworkNode {
            @display("p=128.01,197.03499");
        }
        hostB2: <hostType> like INetworkNode {
            @display("p=371.47998,173.19");
        }
        hostB3: <hostType> like INetworkNode {
            @display("p=306.22,276.1");
        }
        hostB4: <hostType> like INetworkNode {
            @display("p=217.11499,219.625");
        }
        hostC1: <hostType> like INetworkNode {
            @display("p=843.36,399.09");
        }
        hostC2: <hostType> like INetworkNode {
            @display("p=554.70996,286.13998");
        }
        hostC3: <hostType> like INetworkNode {
            @display("p=735.43,197.03499");
        }
        hostC4: <hostType> like INetworkNode {
            @display("p=825.79,267.315");
        }
        hostC5: <hostType> like INetworkNode {
            @display("p=745.47,367.715");
        }
        hostC6: <hostType> like INetworkNode {
            @display("p=956.31,384.03");
        }
        hostB5: <hostType> like INetworkNode {
            @display("p=342.615,399.09");
        }
        hostC7: <hostType> like INetworkNode {
            @display("p=635.02997,342.615");
        }
        hostB6: <hostType> like INetworkNode {
            @display("p=230.92,335.085");
        }
        hostB7: <hostType> like INetworkNode {
            @display("p=115.46,286.13998");
        }
        hostC8: <hostType> like INetworkNode {
            @display("p=503.25497,414.15");
        }
        hostC9: <hostType> like INetworkNode {
            @display("p=454.31,350.145");
        }
        hostB8: <hostType> like INetworkNode {
            @display("p=405.365,286.13998");
        }
        hostB9: <hostType> like INetworkNode {
            @display("p=101.655,414.15");
        }
        hostC10: <hostType> like INetworkNode {
            @display("p=827.045,35.14");
        }
        hostC11: <hostType> like INetworkNode {
            @display("p=907.365,129.265");
        }
        hostB10: <hostType> like INetworkNode {
            @display("p=524.58997,66.515");
        }
        hostC12: <hostType> like INetworkNode {
            @display("p=645.07,66.515");
        }
        hostB11: <hostType> like INetworkNode {
            @display("p=454.31,99.145");
        }
        hostB12: <hostType> like INetworkNode {
            @display("p=150.59999,66.515");
        }
        hostC13: <hostType> like INetworkNode {
            @display("p=794.415,116.715");
        }
        hostC14: <hostType> like INetworkNode {
            @display("p=635.02997,148.09");
        }
        hostB13: <hostType> like INetworkNode {
            @display("p=238.45,148.09");
        }
        hostB14: <hostType> like INetworkNode {
            @display("p=298.69,81.575");
        }
}
