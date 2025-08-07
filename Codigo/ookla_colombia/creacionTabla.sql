
CREATE TABLE performance_fixed_tiles (
    quadkey NVARCHAR(50),
    tile NVARCHAR(MAX),
    tile_x FLOAT,
    tile_y FLOAT,
    avg_d_kbps BIGINT,
    avg_u_kbps BIGINT,
    avg_lat_ms INT,
    avg_lat_down_ms FLOAT,
    avg_lat_up_ms FLOAT,
    tests INT,
    devices INT
);

select * from performance_fixed_tiles
