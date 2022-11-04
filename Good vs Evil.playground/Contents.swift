import UIKit

func evaluate(good: String, vsEvil evil: String) -> String {
    let goodForces = good.components(separatedBy: [" "]).map({Int($0)})
    let evilForces = evil.components(separatedBy: [" "]).map({Int($0)})
    let goodWorth = [1,2,3,3,4,10]
    let evilWorth = [1,2,2,2,3,5,10]
    var goodSum: UInt32 = 0
    var evilSum: UInt32 = 0
    for index in goodForces.indices {
        goodSum += UInt32(goodForces[index] ?? 0) * UInt32(goodWorth[index])
    }
    for index in evilForces.indices {
        evilSum += UInt32(evilForces[index] ?? 0) * UInt32(evilWorth[index])
    }
    if goodSum > evilSum {
        return "Battle Result: Good triumphs over Evil"
    } else if goodSum == evilSum {
        return "Battle Result: No victor on this battle field"
    } else {
        return "Battle Result: Evil eradicates all trace of Good"
    }
}

print(evaluate(good: "1 0 0 0 0 0", vsEvil: "1 0 0 0 0 0 0"))
