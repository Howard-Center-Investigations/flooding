Flooding data explanations fall 2019
================

## Data used to create maps for flooding project.

\#Floodplains

Acquired from FEMA thorugh DC gov open data. The values are from 2016
(needs to be validated), data itself is updated 2019.

    ## # A tibble: 4 x 2
    ## # Groups:   flood_zone [4]
    ##   flood_zone                                                              n
    ##   <fct>                                                               <int>
    ## 1 0.2 PCT ANNUAL CHANCE FLOOD HAZARD                                    206
    ## 2 "Area of minimal flood hazard,Zone X is the area\ndetermined to be…   137
    ## 3 Areas subject to inundation by the 1-%-annual-chance flood event d…    30
    ## 4 "Areas with a 1% annual chance of flooding and a 26% chance of flo…    12

## Storm surge data

This data reflects areas with a risk of storm tide flooding from
hurricanes, based on potential storm tide heights calculated by the
National Weather Service’s SLOSH (Sea,Lake, and Overland Surge from
Hurricanes) Model. The SLOSH Basin used for mapping was Chesapeake Bay
(CP5), released in 2014. This data was prepared by the U.S. Army Corps
of Engineers, Baltimore District, Planning Division in January
2016.SLOSH storm tide elevations used for this mapping are based on the
Maximum of Maximums (MOM) SLOSH output dataset. The MOM output
elevations represent the highest calculated storm tide values based on
thousands of SLOSH simulations using different combinations of approach
direction, forward speed, landfall point, astronomical tide, and
intensity (Category 1 through Category 4). Categories 1 through 4 refer
to the Saffir-Simpson scale of hurricane intensity.This map does not
reflect the expected storm tide flooding for every hurricane, or for any
one particular type of hurricane. This map shows the overall footprint
of the area that has some risk of storm tide flooding from hurricanes,
based on the MOM output dataset. The purpose of this data is to support
hurricane emergency management planning activities.For more information
on the SLOSH model and the MOM dataset, please visit
<http://www.nhc.noaa.gov/surge/slosh.php>.

    ## [1]  1 99  4  3  2

    ## [1] 2

    ## # A tibble: 5 x 2
    ## # Groups:   zone [5]
    ##   zone                                                   n
    ##   <fct>                                              <int>
    ## 1 the area is inundated by a Category 1 hurricane        2
    ## 2 the area is inundated by a Category 2 hurricane        5
    ## 3 the area is inundated by a Category 3 hurricane        5
    ## 4 the area is inundated by a Category 34 hurricane       5
    ## 5 the area is not going to be inundated in any storm     2
