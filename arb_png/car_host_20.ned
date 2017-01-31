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

network car_host_20
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
            @display("p=101.655,197.03499");
        }
        hostD: <hostType> like INetworkNode {
            @display("p=896.06995,204.56499");
        }
        hostB: <hostType> like INetworkNode {
            @display("p=454.31,245.98");
        }
        hostC: <hostType> like INetworkNode {
            @display("p=655.11,219.625");
        }
        hostB1: <hostType> like INetworkNode {
            @display("p=278.61,116.715");
        }
        hostB2: <hostType> like INetworkNode {
            @display("p=405.365,155.62");
        }
        hostB3: <hostType> like INetworkNode {
            @display("p=337.595,286.13998");
        }
        hostB4: <hostType> like INetworkNode {
            @display("p=217.11499,219.625");
        }
        hostC1: <hostType> like INetworkNode {
            @display("p=745.47,173.19");
        }
        hostC2: <hostType> like INetworkNode {
            @display("p=537.13995,245.98");
        }
        hostC3: <hostType> like INetworkNode {
            @display("p=562.24,155.62");
        }
        hostC4: <hostType> like INetworkNode {
            @display("p=673.935,116.715");
        }
        hostC5: <hostType> like INetworkNode {
            @display("p=562.24,402.85498");
        }
        hostB5: <hostType> like INetworkNode {
            @display("p=362.69498,451.8");
        }
        hostB6: <hostType> like INetworkNode {
            @display("p=348.88998,363.94998");
        }
        hostB7: <hostType> like INetworkNode {
            @display("p=454.31,81.575");
        }
        hostB8: <hostType> like INetworkNode {
            @display("p=327.555,197.03499");
        }
        hostC6: <hostType> like INetworkNode {
            @display("p=704.055,363.94998");
        }
        hostC7: <hostType> like INetworkNode {
            @display("p=611.185,292.41498");
        }
        hostB9: <hostType> like INetworkNode {
            @display("p=195.78,363.94998");
        }
        hostC8: <hostType> like INetworkNode {
            @display("p=778.1,268.56998");
        }
        hostC9: <hostType> like INetworkNode {
            @display("p=503.25497,340.10498");
        }
}
