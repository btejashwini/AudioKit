//
//  bitCrush.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** bitCrush: Bit Crusher - This will digitally degrade a signal.

     - parameter bitDepth: The bit depth of signal output. Typically in range (1-24). Non-integer values are OK. (Default: 8, Minimum: 1, Maximum: 24)
     - parameter sampleRate: The sample rate of signal output. (Default: 10000, Minimum: 0, Maximum: 20000)
     */
    public mutating func bitCrush(bitDepth bitDepth: AKParameter = 8, sampleRate: AKParameter = 10000) {
        self = self.bitCrushed(bitDepth: bitDepth, sampleRate: sampleRate)
    }

    /** bitCrushed: Bit Crusher - This will digitally degrade a signal.

     - returns: AKOperation
     - parameter bitDepth: The bit depth of signal output. Typically in range (1-24). Non-integer values are OK. (Default: 8, Minimum: 1, Maximum: 24)
     - parameter sampleRate: The sample rate of signal output. (Default: 10000, Minimum: 0, Maximum: 20000)
     */
    public func bitCrushed(
        bitDepth bitDepth: AKParameter = 8,
        sampleRate: AKParameter = 10000
        ) -> AKOperation {
            return AKOperation("(\(self) \(bitDepth) \(sampleRate) bitcrush)")
    }
}