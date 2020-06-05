crystalSym = crystalSymmetry('cubic');
specimenSym = specimenSymmetry('orthorhombic');
ori = orientation('Euler', [1 0 0]*degree, crystalSym, specimenSym);
ODF = unimodalODF(ori, 'halfwidth', 5*degree);
export(ODF, 'ODF.txt', 'Bunge', 'MTEX');
