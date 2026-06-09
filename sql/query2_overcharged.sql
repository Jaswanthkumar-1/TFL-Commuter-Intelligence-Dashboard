SELECT

    Journey_ID,

    Origin_Station,

    Destination_Station,

    Journey_Cost

FROM tfl_commuter_trends t1

WHERE Journey_Cost >

(
    SELECT

        AVG(t2.Journey_Cost) * 1.5

    FROM tfl_commuter_trends t2

    WHERE

        t1.Origin_Station =
        t2.Origin_Station

        AND

        t1.Destination_Station =
        t2.Destination_Station
);
