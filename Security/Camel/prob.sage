from secret import FLAG

a = int(FLAG.hex()[:20],16)
b = int(FLAG.hex()[20:44],16)
p = int(FLAG.hex()[44:],16)

ecc = EllipticCurve(GF(p), [a,b])

ecc.point((p-1,  759211060281786031869071242155234136314844944))
ecc.point((p+1, 1057401451679095062531151979389760885573147826))
ecc.point((p+2,  142926404549455192668575513920450762633800129))
ecc.point((p-3,  773808304364278082418521288269860813684230337))
ecc.point((p+3,  155419950529021753751813670756068418661489493))
ecc.point((p-4,  564605286683346876667536567601259285744471988))
ecc.point((p-5,  812270051867990261460153809983232723732262237))
ecc.point((p+5,  410837747859871710141162996756729573836835781))
ecc.point((p-7,  576115660671090581945855297280052151651777662))

assert FLAG == bytes.fromhex(hex(a)[2:] + hex(b)[2:] + hex(p)[2:])
