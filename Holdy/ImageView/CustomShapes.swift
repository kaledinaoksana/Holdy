//
//  CustomShapes.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//

import Foundation
import SwiftUI

struct CashShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.29054*width, y: 0.57104*height))
        path.addCurve(to: CGPoint(x: 0.37151*width, y: 0.56585*height), control1: CGPoint(x: 0.31865*width, y: 0.57104*height), control2: CGPoint(x: 0.34581*width, y: 0.56922*height))
        path.addLine(to: CGPoint(x: 0.37151*width, y: 0.2841*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.27891*height), control1: CGPoint(x: 0.34581*width, y: 0.28072*height), control2: CGPoint(x: 0.31865*width, y: 0.27891*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.41068*height), control1: CGPoint(x: 0.13008*width, y: 0.27891*height), control2: CGPoint(x: 0, y: 0.3379*height))
        path.addLine(to: CGPoint(x: 0, y: 0.43926*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.57104*height), control1: CGPoint(x: 0, y: 0.51204*height), control2: CGPoint(x: 0.13008*width, y: 0.57104*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.29054*width, y: 0.71816*height))
        path.addCurve(to: CGPoint(x: 0.37151*width, y: 0.71296*height), control1: CGPoint(x: 0.31865*width, y: 0.71816*height), control2: CGPoint(x: 0.34581*width, y: 0.71634*height))
        path.addLine(to: CGPoint(x: 0.37151*width, y: 0.63038*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.6356*height), control1: CGPoint(x: 0.3458*width, y: 0.63376*height), control2: CGPoint(x: 0.31865*width, y: 0.6356*height))
        path.addCurve(to: CGPoint(x: 0.00611*width, y: 0.53081*height), control1: CGPoint(x: 0.15048*width, y: 0.6356*height), control2: CGPoint(x: 0.03357*width, y: 0.59064*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.5578*height), control1: CGPoint(x: 0.00211*width, y: 0.53953*height), control2: CGPoint(x: 0, y: 0.54855*height))
        path.addLine(to: CGPoint(x: 0, y: 0.58638*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.71816*height), control1: CGPoint(x: 0, y: 0.65916*height), control2: CGPoint(x: 0.13008*width, y: 0.71816*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.37151*width, y: 0.78392*height))
        path.addLine(to: CGPoint(x: 0.37151*width, y: 0.77751*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.78272*height), control1: CGPoint(x: 0.3458*width, y: 0.78088*height), control2: CGPoint(x: 0.31865*width, y: 0.78272*height))
        path.addCurve(to: CGPoint(x: 0.00611*width, y: 0.67794*height), control1: CGPoint(x: 0.15048*width, y: 0.78272*height), control2: CGPoint(x: 0.03357*width, y: 0.73776*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.70492*height), control1: CGPoint(x: 0.00211*width, y: 0.68665*height), control2: CGPoint(x: 0, y: 0.69567*height))
        path.addLine(to: CGPoint(x: 0, y: 0.7335*height))
        path.addCurve(to: CGPoint(x: 0.29054*width, y: 0.86528*height), control1: CGPoint(x: 0, y: 0.80628*height), control2: CGPoint(x: 0.13008*width, y: 0.86528*height))
        path.addCurve(to: CGPoint(x: 0.38236*width, y: 0.85856*height), control1: CGPoint(x: 0.32263*width, y: 0.86528*height), control2: CGPoint(x: 0.35349*width, y: 0.86291*height))
        path.addCurve(to: CGPoint(x: 0.37151*width, y: 0.8125*height), control1: CGPoint(x: 0.3752*width, y: 0.84392*height), control2: CGPoint(x: 0.37151*width, y: 0.82849*height))
        path.addLine(to: CGPoint(x: 0.37151*width, y: 0.78392*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70946*width, y: 0.05573*height))
        path.addCurve(to: CGPoint(x: 0.41892*width, y: 0.1875*height), control1: CGPoint(x: 0.549*width, y: 0.05573*height), control2: CGPoint(x: 0.41892*width, y: 0.11472*height))
        path.addLine(to: CGPoint(x: 0.41892*width, y: 0.21608*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.34785*height), control1: CGPoint(x: 0.41892*width, y: 0.28886*height), control2: CGPoint(x: 0.549*width, y: 0.34785*height))
        path.addCurve(to: CGPoint(x: width, y: 0.21608*height), control1: CGPoint(x: 0.86992*width, y: 0.34785*height), control2: CGPoint(x: width, y: 0.28886*height))
        path.addLine(to: CGPoint(x: width, y: 0.1875*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.05573*height), control1: CGPoint(x: width, y: 0.11472*height), control2: CGPoint(x: 0.86992*width, y: 0.05573*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70946*width, y: 0.41242*height))
        path.addCurve(to: CGPoint(x: 0.42503*width, y: 0.30763*height), control1: CGPoint(x: 0.5694*width, y: 0.41242*height), control2: CGPoint(x: 0.45249*width, y: 0.36746*height))
        path.addCurve(to: CGPoint(x: 0.41892*width, y: 0.33462*height), control1: CGPoint(x: 0.42103*width, y: 0.31634*height), control2: CGPoint(x: 0.41892*width, y: 0.32537*height))
        path.addLine(to: CGPoint(x: 0.41892*width, y: 0.3632*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.49497*height), control1: CGPoint(x: 0.41892*width, y: 0.43598*height), control2: CGPoint(x: 0.549*width, y: 0.49497*height))
        path.addCurve(to: CGPoint(x: width, y: 0.3632*height), control1: CGPoint(x: 0.86992*width, y: 0.49497*height), control2: CGPoint(x: width, y: 0.43598*height))
        path.addLine(to: CGPoint(x: width, y: 0.33462*height))
        path.addCurve(to: CGPoint(x: 0.99389*width, y: 0.30763*height), control1: CGPoint(x: width, y: 0.32537*height), control2: CGPoint(x: 0.99789*width, y: 0.31634*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.41242*height), control1: CGPoint(x: 0.96643*width, y: 0.36746*height), control2: CGPoint(x: 0.84952*width, y: 0.41242*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70946*width, y: 0.55954*height))
        path.addCurve(to: CGPoint(x: 0.42503*width, y: 0.45475*height), control1: CGPoint(x: 0.5694*width, y: 0.55954*height), control2: CGPoint(x: 0.45249*width, y: 0.51458*height))
        path.addCurve(to: CGPoint(x: 0.41892*width, y: 0.48174*height), control1: CGPoint(x: 0.42103*width, y: 0.46346*height), control2: CGPoint(x: 0.41892*width, y: 0.47249*height))
        path.addLine(to: CGPoint(x: 0.41892*width, y: 0.51032*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.6421*height), control1: CGPoint(x: 0.41892*width, y: 0.5831*height), control2: CGPoint(x: 0.549*width, y: 0.6421*height))
        path.addCurve(to: CGPoint(x: width, y: 0.51032*height), control1: CGPoint(x: 0.86992*width, y: 0.6421*height), control2: CGPoint(x: width, y: 0.5831*height))
        path.addLine(to: CGPoint(x: width, y: 0.48174*height))
        path.addCurve(to: CGPoint(x: 0.99389*width, y: 0.45475*height), control1: CGPoint(x: width, y: 0.47249*height), control2: CGPoint(x: 0.99789*width, y: 0.46346*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.55954*height), control1: CGPoint(x: 0.96643*width, y: 0.51458*height), control2: CGPoint(x: 0.84952*width, y: 0.55954*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70946*width, y: 0.7146*height))
        path.addCurve(to: CGPoint(x: 0.42503*width, y: 0.60981*height), control1: CGPoint(x: 0.5694*width, y: 0.7146*height), control2: CGPoint(x: 0.45249*width, y: 0.66964*height))
        path.addCurve(to: CGPoint(x: 0.41892*width, y: 0.6368*height), control1: CGPoint(x: 0.42103*width, y: 0.61853*height), control2: CGPoint(x: 0.41892*width, y: 0.62755*height))
        path.addLine(to: CGPoint(x: 0.41892*width, y: 0.66538*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.79716*height), control1: CGPoint(x: 0.41892*width, y: 0.73816*height), control2: CGPoint(x: 0.549*width, y: 0.79716*height))
        path.addCurve(to: CGPoint(x: width, y: 0.66538*height), control1: CGPoint(x: 0.86992*width, y: 0.79716*height), control2: CGPoint(x: width, y: 0.73816*height))
        path.addLine(to: CGPoint(x: width, y: 0.6368*height))
        path.addCurve(to: CGPoint(x: 0.99389*width, y: 0.60981*height), control1: CGPoint(x: width, y: 0.62755*height), control2: CGPoint(x: 0.99789*width, y: 0.61852*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.7146*height), control1: CGPoint(x: 0.96643*width, y: 0.66964*height), control2: CGPoint(x: 0.84952*width, y: 0.7146*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70946*width, y: 0.86172*height))
        path.addCurve(to: CGPoint(x: 0.42503*width, y: 0.75694*height), control1: CGPoint(x: 0.5694*width, y: 0.86172*height), control2: CGPoint(x: 0.45249*width, y: 0.81677*height))
        path.addCurve(to: CGPoint(x: 0.41892*width, y: 0.78392*height), control1: CGPoint(x: 0.42103*width, y: 0.76565*height), control2: CGPoint(x: 0.41892*width, y: 0.77468*height))
        path.addLine(to: CGPoint(x: 0.41892*width, y: 0.8125*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.94427*height), control1: CGPoint(x: 0.41892*width, y: 0.88528*height), control2: CGPoint(x: 0.549*width, y: 0.94427*height))
        path.addCurve(to: CGPoint(x: width, y: 0.8125*height), control1: CGPoint(x: 0.86992*width, y: 0.94427*height), control2: CGPoint(x: width, y: 0.88528*height))
        path.addLine(to: CGPoint(x: width, y: 0.78392*height))
        path.addCurve(to: CGPoint(x: 0.99389*width, y: 0.75693*height), control1: CGPoint(x: width, y: 0.77467*height), control2: CGPoint(x: 0.99789*width, y: 0.76564*height))
        path.addCurve(to: CGPoint(x: 0.70946*width, y: 0.86172*height), control1: CGPoint(x: 0.96643*width, y: 0.81676*height), control2: CGPoint(x: 0.84952*width, y: 0.86172*height))
        path.closeSubpath()
        return path
    }
}

struct SavingsShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.97643*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.99802*width, y: 0.42599*height))
        path.addCurve(to: CGPoint(x: 0.97369*width, y: 0.37038*height), control1: CGPoint(x: 1.00473*width, y: 0.40296*height), control2: CGPoint(x: 0.99384*width, y: 0.37806*height))
        path.addCurve(to: CGPoint(x: 0.92504*width, y: 0.39818*height), control1: CGPoint(x: 0.95354*width, y: 0.36271*height), control2: CGPoint(x: 0.93176*width, y: 0.37515*height))
        path.addLine(to: CGPoint(x: 0.90817*width, y: 0.45604*height))
        path.addLine(to: CGPoint(x: 0.84438*width, y: 0.45604*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.01649*height), control1: CGPoint(x: 0.82488*width, y: 0.20995*height), control2: CGPoint(x: 0.64339*width, y: 0.01649*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.18979*width, y: 0.01649*height), control2: CGPoint(x: 0, y: 0.23339*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.98351*height), control1: CGPoint(x: 0, y: 0.76661*height), control2: CGPoint(x: 0.18979*width, y: 0.98351*height))
        path.addCurve(to: CGPoint(x: 0.84438*width, y: 0.54395*height), control1: CGPoint(x: 0.64339*width, y: 0.98351*height), control2: CGPoint(x: 0.82488*width, y: 0.79004*height))
        path.addLine(to: CGPoint(x: 0.90817*width, y: 0.54395*height))
        path.addLine(to: CGPoint(x: 0.92504*width, y: 0.60181*height))
        path.addCurve(to: CGPoint(x: 0.96152*width, y: 0.63188*height), control1: CGPoint(x: 0.93042*width, y: 0.62023*height), control2: CGPoint(x: 0.94542*width, y: 0.63188*height))
        path.addCurve(to: CGPoint(x: 0.97369*width, y: 0.62961*height), control1: CGPoint(x: 0.96556*width, y: 0.63188*height), control2: CGPoint(x: 0.96966*width, y: 0.63115*height))
        path.addCurve(to: CGPoint(x: 0.99801*width, y: 0.57401*height), control1: CGPoint(x: 0.99384*width, y: 0.62193*height), control2: CGPoint(x: 1.00473*width, y: 0.59704*height))
        path.addLine(to: CGPoint(x: 0.97643*width, y: 0.5*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42307*width, y: 0.8956*height))
        path.addCurve(to: CGPoint(x: 0.07692*width, y: 0.5*height), control1: CGPoint(x: 0.2322*width, y: 0.8956*height), control2: CGPoint(x: 0.07692*width, y: 0.71814*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.1044*height), control1: CGPoint(x: 0.07692*width, y: 0.28186*height), control2: CGPoint(x: 0.2322*width, y: 0.1044*height))
        path.addCurve(to: CGPoint(x: 0.76707*width, y: 0.45604*height), control1: CGPoint(x: 0.60094*width, y: 0.1044*height), control2: CGPoint(x: 0.74788*width, y: 0.25852*height))
        path.addLine(to: CGPoint(x: 0.68954*width, y: 0.45604*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.19231*height), control1: CGPoint(x: 0.67082*width, y: 0.30714*height), control2: CGPoint(x: 0.55847*width, y: 0.19231*height))
        path.addCurve(to: CGPoint(x: 0.15384*width, y: 0.5*height), control1: CGPoint(x: 0.27462*width, y: 0.19231*height), control2: CGPoint(x: 0.15384*width, y: 0.33034*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.80769*height), control1: CGPoint(x: 0.15384*width, y: 0.66966*height), control2: CGPoint(x: 0.27462*width, y: 0.80769*height))
        path.addCurve(to: CGPoint(x: 0.68954*width, y: 0.54396*height), control1: CGPoint(x: 0.55847*width, y: 0.80769*height), control2: CGPoint(x: 0.67082*width, y: 0.69287*height))
        path.addLine(to: CGPoint(x: 0.76707*width, y: 0.54396*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.8956*height), control1: CGPoint(x: 0.74788*width, y: 0.74148*height), control2: CGPoint(x: 0.60094*width, y: 0.8956*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.53184*width, y: 0.45604*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.36813*height), control1: CGPoint(x: 0.51596*width, y: 0.40489*height), control2: CGPoint(x: 0.47321*width, y: 0.36813*height))
        path.addCurve(to: CGPoint(x: 0.30769*width, y: 0.5*height), control1: CGPoint(x: 0.35945*width, y: 0.36813*height), control2: CGPoint(x: 0.30769*width, y: 0.42729*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.63187*height), control1: CGPoint(x: 0.30769*width, y: 0.57271*height), control2: CGPoint(x: 0.35945*width, y: 0.63187*height))
        path.addCurve(to: CGPoint(x: 0.53184*width, y: 0.54396*height), control1: CGPoint(x: 0.47321*width, y: 0.63187*height), control2: CGPoint(x: 0.51596*width, y: 0.59511*height))
        path.addLine(to: CGPoint(x: 0.61151*width, y: 0.54396*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.71978*height), control1: CGPoint(x: 0.59364*width, y: 0.64415*height), control2: CGPoint(x: 0.51594*width, y: 0.71978*height))
        path.addCurve(to: CGPoint(x: 0.23077*width, y: 0.5*height), control1: CGPoint(x: 0.31704*width, y: 0.71978*height), control2: CGPoint(x: 0.23077*width, y: 0.62119*height))
        path.addCurve(to: CGPoint(x: 0.42307*width, y: 0.28022*height), control1: CGPoint(x: 0.23077*width, y: 0.37882*height), control2: CGPoint(x: 0.31704*width, y: 0.28022*height))
        path.addCurve(to: CGPoint(x: 0.61151*width, y: 0.45604*height), control1: CGPoint(x: 0.51594*width, y: 0.28022*height), control2: CGPoint(x: 0.59364*width, y: 0.35585*height))
        path.addLine(to: CGPoint(x: 0.53184*width, y: 0.45604*height))
        path.closeSubpath()
        return path
    }
}

struct DebtsShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.71448*width, y: 0.34553*height))
        path.addCurve(to: CGPoint(x: 0.89793*width, y: 0.1316*height), control1: CGPoint(x: 0.82771*width, y: 0.2796*height), control2: CGPoint(x: 0.87616*width, y: 0.18671*height))
        path.addCurve(to: CGPoint(x: 0.78416*width, y: 0.00258*height), control1: CGPoint(x: 0.91834*width, y: 0.07954*height), control2: CGPoint(x: 0.87453*width, y: 0.01156*height))
        path.addCurve(to: CGPoint(x: 0.54845*width, y: 0.02667*height), control1: CGPoint(x: 0.72537*width, y: -0.00313*height), control2: CGPoint(x: 0.64589*width, y: 0.00483*height))
        path.addCurve(to: CGPoint(x: 0.45155*width, y: 0.02667*height), control1: CGPoint(x: 0.5166*width, y: 0.03382*height), control2: CGPoint(x: 0.48312*width, y: 0.03382*height))
        path.addCurve(to: CGPoint(x: 0.21584*width, y: 0.00258*height), control1: CGPoint(x: 0.35411*width, y: 0.00503*height), control2: CGPoint(x: 0.27436*width, y: -0.00517*height))
        path.addCurve(to: CGPoint(x: 0.10207*width, y: 0.1316*height), control1: CGPoint(x: 0.10778*width, y: 0.01687*height), control2: CGPoint(x: 0.08492*width, y: 0.08403*height))
        path.addCurve(to: CGPoint(x: 0.28552*width, y: 0.34553*height), control1: CGPoint(x: 0.12221*width, y: 0.18712*height), control2: CGPoint(x: 0.17229*width, y: 0.2796*height))
        path.addCurve(to: CGPoint(x: 0.02912*width, y: 0.72135*height), control1: CGPoint(x: 0.13064*width, y: 0.4329*height), control2: CGPoint(x: 0.02912*width, y: 0.60071*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.02912*width, y: 0.88732*height), control2: CGPoint(x: 0.21638*width, y: height))
        path.addCurve(to: CGPoint(x: 0.97087*width, y: 0.72135*height), control1: CGPoint(x: 0.78361*width, y: height), control2: CGPoint(x: 0.97087*width, y: 0.88732*height))
        path.addCurve(to: CGPoint(x: 0.71448*width, y: 0.34553*height), control1: CGPoint(x: 0.97087*width, y: 0.60071*height), control2: CGPoint(x: 0.86935*width, y: 0.4329*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.20985*width, y: 0.10914*height))
        path.addCurve(to: CGPoint(x: 0.23054*width, y: 0.08567*height), control1: CGPoint(x: 0.20713*width, y: 0.102*height), control2: CGPoint(x: 0.20522*width, y: 0.08914*height))
        path.addCurve(to: CGPoint(x: 0.41998*width, y: 0.1069*height), control1: CGPoint(x: 0.2602*width, y: 0.08158*height), control2: CGPoint(x: 0.31736*width, y: 0.08403*height))
        path.addCurve(to: CGPoint(x: 0.58056*width, y: 0.1069*height), control1: CGPoint(x: 0.47251*width, y: 0.11853*height), control2: CGPoint(x: 0.52803*width, y: 0.11853*height))
        path.addCurve(to: CGPoint(x: 0.77*width, y: 0.08567*height), control1: CGPoint(x: 0.68318*width, y: 0.08403*height), control2: CGPoint(x: 0.74034*width, y: 0.08179*height))
        path.addCurve(to: CGPoint(x: 0.79069*width, y: 0.10914*height), control1: CGPoint(x: 0.79096*width, y: 0.08832*height), control2: CGPoint(x: 0.79314*width, y: 0.102*height))
        path.addCurve(to: CGPoint(x: 0.60397*width, y: 0.30062*height), control1: CGPoint(x: 0.77164*width, y: 0.16018*height), control2: CGPoint(x: 0.72264*width, y: 0.2502*height))
        path.addCurve(to: CGPoint(x: 0.50054*width, y: 0.28735*height), control1: CGPoint(x: 0.57077*width, y: 0.29205*height), control2: CGPoint(x: 0.5362*width, y: 0.28735*height))
        path.addCurve(to: CGPoint(x: 0.39711*width, y: 0.30062*height), control1: CGPoint(x: 0.46489*width, y: 0.28735*height), control2: CGPoint(x: 0.43005*width, y: 0.29205*height))
        path.addCurve(to: CGPoint(x: 0.20985*width, y: 0.10914*height), control1: CGPoint(x: 0.27762*width, y: 0.2502*height), control2: CGPoint(x: 0.22863*width, y: 0.15997*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.91712*height))
        path.addCurve(to: CGPoint(x: 0.1399*width, y: 0.72135*height), control1: CGPoint(x: 0.3356*width, y: 0.91712*height), control2: CGPoint(x: 0.1399*width, y: 0.86609*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.37044*height), control1: CGPoint(x: 0.1399*width, y: 0.58948*height), control2: CGPoint(x: 0.30729*width, y: 0.37044*height))
        path.addCurve(to: CGPoint(x: 0.8601*width, y: 0.72135*height), control1: CGPoint(x: 0.69271*width, y: 0.37044*height), control2: CGPoint(x: 0.8601*width, y: 0.58948*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.91712*height), control1: CGPoint(x: 0.8601*width, y: 0.86609*height), control2: CGPoint(x: 0.66739*width, y: 0.91712*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.61418*height))
        path.addCurve(to: CGPoint(x: 0.45046*width, y: 0.57703*height), control1: CGPoint(x: 0.47278*width, y: 0.61418*height), control2: CGPoint(x: 0.45046*width, y: 0.59744*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.53987*height), control1: CGPoint(x: 0.45046*width, y: 0.55661*height), control2: CGPoint(x: 0.47278*width, y: 0.53987*height))
        path.addCurve(to: CGPoint(x: 0.5362*width, y: 0.55151*height), control1: CGPoint(x: 0.51388*width, y: 0.53987*height), control2: CGPoint(x: 0.52667*width, y: 0.54396*height))
        path.addCurve(to: CGPoint(x: 0.60343*width, y: 0.55314*height), control1: CGPoint(x: 0.55416*width, y: 0.5658*height), control2: CGPoint(x: 0.58438*width, y: 0.56662*height))
        path.addCurve(to: CGPoint(x: 0.60561*width, y: 0.50272*height), control1: CGPoint(x: 0.62248*width, y: 0.53967*height), control2: CGPoint(x: 0.62357*width, y: 0.51701*height))
        path.addCurve(to: CGPoint(x: 0.54763*width, y: 0.47455*height), control1: CGPoint(x: 0.58955*width, y: 0.48986*height), control2: CGPoint(x: 0.56968*width, y: 0.48027*height))
        path.addLine(to: CGPoint(x: 0.54763*width, y: 0.45904*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.42331*height), control1: CGPoint(x: 0.54763*width, y: 0.43923*height), control2: CGPoint(x: 0.5264*width, y: 0.42331*height))
        path.addCurve(to: CGPoint(x: 0.45237*width, y: 0.45904*height), control1: CGPoint(x: 0.4736*width, y: 0.42331*height), control2: CGPoint(x: 0.45237*width, y: 0.43923*height))
        path.addLine(to: CGPoint(x: 0.45237*width, y: 0.47455*height))
        path.addCurve(to: CGPoint(x: 0.3552*width, y: 0.57703*height), control1: CGPoint(x: 0.39575*width, y: 0.48945*height), control2: CGPoint(x: 0.3552*width, y: 0.52967*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.68563*height), control1: CGPoint(x: 0.3552*width, y: 0.63684*height), control2: CGPoint(x: 0.42025*width, y: 0.68563*height))
        path.addCurve(to: CGPoint(x: 0.54954*width, y: 0.72278*height), control1: CGPoint(x: 0.52722*width, y: 0.68563*height), control2: CGPoint(x: 0.54954*width, y: 0.70237*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.75994*height), control1: CGPoint(x: 0.54954*width, y: 0.74319*height), control2: CGPoint(x: 0.52722*width, y: 0.75994*height))
        path.addCurve(to: CGPoint(x: 0.4638*width, y: 0.7483*height), control1: CGPoint(x: 0.48612*width, y: 0.75994*height), control2: CGPoint(x: 0.47332*width, y: 0.75585*height))
        path.addCurve(to: CGPoint(x: 0.39657*width, y: 0.74667*height), control1: CGPoint(x: 0.44583*width, y: 0.73401*height), control2: CGPoint(x: 0.41562*width, y: 0.73319*height))
        path.addCurve(to: CGPoint(x: 0.39439*width, y: 0.79709*height), control1: CGPoint(x: 0.37752*width, y: 0.76014*height), control2: CGPoint(x: 0.37643*width, y: 0.7828*height))
        path.addCurve(to: CGPoint(x: 0.45237*width, y: 0.82526*height), control1: CGPoint(x: 0.41045*width, y: 0.80995*height), control2: CGPoint(x: 0.43032*width, y: 0.81954*height))
        path.addLine(to: CGPoint(x: 0.45237*width, y: 0.84078*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.8765*height), control1: CGPoint(x: 0.45237*width, y: 0.86057*height), control2: CGPoint(x: 0.4736*width, y: 0.8765*height))
        path.addCurve(to: CGPoint(x: 0.54763*width, y: 0.84078*height), control1: CGPoint(x: 0.5264*width, y: 0.8765*height), control2: CGPoint(x: 0.54763*width, y: 0.86057*height))
        path.addLine(to: CGPoint(x: 0.54763*width, y: 0.82526*height))
        path.addCurve(to: CGPoint(x: 0.6448*width, y: 0.72278*height), control1: CGPoint(x: 0.60425*width, y: 0.81036*height), control2: CGPoint(x: 0.6448*width, y: 0.77014*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.61418*height), control1: CGPoint(x: 0.6448*width, y: 0.66276*height), control2: CGPoint(x: 0.57975*width, y: 0.61418*height))
        path.closeSubpath()
        return path
    }
}
