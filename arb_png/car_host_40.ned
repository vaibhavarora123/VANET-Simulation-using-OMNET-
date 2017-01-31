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

network car_host_40
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
            @display("p=475.645,237.19499");
        }
        hostC: <hostType> like INetworkNode {
            @display("p=594.87,197.03499");
        }
        hostB1: <hostType> like INetworkNode {
            @display("p=128.01,197.03499");
        }
        hostB2: <hostType> like INetworkNode {
            @display("p=313.75,178.20999");
        }
        hostB3: <hostType> like INetworkNode {
            @display("p=286.13998,276.1");
        }
        hostB4: <hostType> like INetworkNode {
            @display("p=217.11499,219.625");
        }
        hostC1: <hostType> like INetworkNode {
            @display("p=688.995,307.47498");
        }
        hostC2: <hostType> like INetworkNode {
            @display("p=515.805,342.615");
        }
        hostC3: <hostType> like INetworkNode {
            @display("p=613.695,81.575");
        }
        hostC4: <hostType> like INetworkNode {
            @display("p=564.75,266.06");
        }
        hostC5: <hostType> like INetworkNode {
            @display("p=680.20996,414.15");
        }
        hostC6: <hostType> like INetworkNode {
            @display("p=756.76495,373.99");
        }
        hostB5: <hostType> like INetworkNode {
            @display("p=387.79498,276.1");
        }
        hostC7: <hostType> like INetworkNode {
            @display("p=606.165,347.63498");
        }
        hostB6: <hostType> like INetworkNode {
            @display("p=199.545,325.04498");
        }
        hostB7: <hostType> like INetworkNode {
            @display("p=115.46,286.13998");
        }
        hostC8: <hostType> like INetworkNode {
            @display("p=503.25497,414.15");
        }
        hostC9: <hostType> like INetworkNode {
            @display("p=426.69998,347.63498");
        }
        hostB8: <hostType> like INetworkNode {
            @display("p=396.58,188.25");
        }
        hostB9: <hostType> like INetworkNode {
            @display("p=101.655,414.15");
        }
        hostC10: <hostType> like INetworkNode {
            @display("p=688.995,160.64");
        }
        hostC11: <hostType> like INetworkNode {
            @display("p=696.52496,237.19499");
        }
        hostB10: <hostType> like INetworkNode {
            @display("p=426.69998,81.575");
        }
        hostC12: <hostType> like INetworkNode {
            @display("p=537.13995,71.534996");
        }
        hostB11: <hostType> like INetworkNode {
            @display("p=335.085,99.145");
        }
        hostB12: <hostType> like INetworkNode {
            @display("p=150.59999,66.515");
        }
        hostC13: <hostType> like INetworkNode {
            @display("p=696.52496,71.534996");
        }
        hostC14: <hostType> like INetworkNode {
            @display("p=515.805,160.64");
        }
        hostB13: <hostType> like INetworkNode {
            @display("p=217.11499,148.09");
        }
        hostB14: <hostType> like INetworkNode {
            @display("p=266.06,66.515");
        }
        hoste0: <hostType> like INetworkNode {
            @display("p=918.66,298.69");
        }
        hoste1: <hostType> like INetworkNode {
            @display("p=918.66,104.16499");
        }
        hoste2: <hostType> like INetworkNode {
            @display("p=852.14496,203.31");
        }
        hoste3: <hostType> like INetworkNode {
            @display("p=788.13995,99.145");
        }
        hoste4: <hostType> like INetworkNode {
            @display("p=769.315,190.76");
        }
        hoste5: <hostType> like INetworkNode {
            @display("p=783.12,269.82498");
        }
        hoste6: <hostType> like INetworkNode {
            @display("p=800.69,325.04498");
        }
        hoste7: <hostType> like INetworkNode {
            @display("p=887.285,353.91");
        }
        hoste8: <hostType> like INetworkNode {
            @display("p=909.875,148.09");
        }
        hoste9: <hostType> like INetworkNode {
            @display("p=892.305,254.765");
        }
}
