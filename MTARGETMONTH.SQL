CREATE OR REPLACE VIEW MTARGETMONTH_ARIS AS
SELECT A.OUTLET_PBI, A.TAHUN, B.BULAN, B.WD,
    DECODE(B.BULAN, 
        '01',A.M01 / WD,
        '02',A.M02 / WD,
        '03',A.M03 / WD,
        '04',A.M04 / WD,
        '05',A.M05 / WD,
        '06',A.M06 / WD,
        '07',A.M07 / WD,
        '08',A.M08 / WD,
        '09',A.M09 / WD,
        '10',A.M10 / WD,
        '11',A.M11 / WD,
        '12',A.M12 / WD
        ) TARGET_HARIAN
FROM OUTLET_PBI_T A, MWORKDAYSUM_ARIS B
WHERE A.TAHUN = B.TAHUN(+);