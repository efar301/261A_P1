# Does Driving Longer Cost You Less?

In this project, I explore the relationship between years licensed and liability premiums for motor insurance policies. The analysis compares comprehensive policies with a deductible (`COMP_E`) and without a deductible (`COMP_N`).

The project uses 2022 observations with positive liability incurred. It fits a separate simple linear regression for each policy type and checks the models using residual plots and normal QQ plots.


## Data

The data can be found [here](https://www.sciencedirect.com/science/article/pii/S235234092600435X). 

The data is cleaned with `ins.r`, and then should be put in the `data\` directory if it is not automatically set there.


The report reads `data/cleaned_data.csv` and produces `report.pdf`.

## Main findings

Years licensed has a weak negative association with liability premiums for policies with a deductible, and no linear association for policies without one. The residuals show that the assumptions for linear regression are not necessarily met, limiting the models usefulness for inference.
