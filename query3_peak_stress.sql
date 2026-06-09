SELECT

    Origin_Station,

    Destination_Station,

    ROUND(
        AVG(
            CASE
                WHEN Time_of_Day =
                'Peak AM'
                THEN Journey_Duration
            END
        ),
        2
    ) AS Peak_AM_Duration,

    ROUND(
        AVG(
            CASE
                WHEN Time_of_Day =
                'Off-Peak'
                THEN Journey_Duration
            END
        ),
        2
    ) AS OffPeak_Duration

FROM tfl_commuter_trends

GROUP BY

    Origin_Station,

    Destination_Station

HAVING

    AVG(
        CASE
            WHEN Time_of_Day =
            'Peak AM'
            THEN Journey_Duration
        END
    )

    >=

    2 *

    AVG(
        CASE
            WHEN Time_of_Day =
            'Off-Peak'
            THEN Journey_Duration
        END
    );