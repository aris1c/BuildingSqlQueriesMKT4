------------MTARGETMONTH
----ERROR JIKA SUM WORKDAY CZ DIA BUKAN INT OR FLOAT
CREATE OR REPLACE VIEW MTARGETMONTH_ARIS AS
SELECT TAHUN, BULAN, COUNT(WORKDAY) WD
FROM WOKDAY_ARIS
GROUP BY TAHUN, BULAN
ORDER BY TAHUN, BULAN;
