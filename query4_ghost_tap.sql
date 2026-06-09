SELECT

    Origin_Station,

    COUNT(*) AS Total_Journeys,

    SUM(
        CASE
            WHEN Journey_Cost >= 9.40
            AND Journey_Duration < 15
            THEN 1
            ELSE 0
        END
    ) AS Ghost_Tap_Flags,

    ROUND(
        (
            SUM(
                CASE
                    WHEN Journey_Cost >= 9.40
                    AND Journey_Duration < 15
                    THEN 1
                    ELSE 0
                END
            ) * 100.0
        ) / COUNT(*),
        2
    ) AS Ghost_Tap_Percentage

FROM tfl_commuter_trends

GROUP BY Origin_Station

HAVING Ghost_Tap_Percentage > 0;