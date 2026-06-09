CREATE TABLE tfl_commuter_trends (
    Date DATE,
    Journey_ID VARCHAR(50),
    Transport_Mode VARCHAR(50),
    Origin_Station VARCHAR(100),
    Destination_Station VARCHAR(100),
    Tap_In_Time DATETIME,
    Tap_Out_Time DATETIME,
    Journey_Cost FLOAT,
    Delay_Minutes INT,
    Origin_Borough VARCHAR(100),
    Destination_Borough VARCHAR(100),
    Journey_Duration FLOAT,
    Cost_Per_Minute FLOAT,
    Time_of_Day VARCHAR(50),
    Congestion_Tier VARCHAR(50)
);