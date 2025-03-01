# Robust Tobit Regression for Censored Observations Using Extended Box-Cox Transformations

Code to reproduce the figures of paper "Robust Tobit Regression for Censored Observations Using Extended Box-Cox Transformations"

Note: in order to run the files below you need to have [FSDA toolbox](https://https://www.mathworks.com/matlabcentral/fileexchange/72999-fsda-flexible-statistics-data-analysis-toolbox) installed

**Abstract**

Truncated regression data often occur in measuring consumer behaviour involving infrequent purchases. We consider  data  with truncation of the upper and lower tails of the response distribution at arbitrary values. If, in addition,  the distribution of responses is also skewed, we use robust transformations of the response with the parametric Yeo-Johnson transformation to provide approximate normality for both positive and negative responses. Tests for the value of the transformation parameter use the signed square root of the loglikelihood ratio test. To achieve robustness  we use the Forward Search which fits the model to data subsets of increasing size and so orders the observations by closeness to the fitted model.  Monitoring the  statistic for  transformation  during the Forward Search, indicates an appropriate transformation.  We initially exhibit the properties of our procedure  on simulated data. Our practical regression analysis is of 493 observations derived from loyalty card data. 100 of the responses are censored at zero and there are ten explanatory variables.


| FileName | View :eyes:| Run ▶️ |
| -------- | ---- | --- |
|`mainSimulatedData.mlx`: generate Figures 1-6  | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://viewer.mathworks.com/?viewer=live_code&url=https%3A%2F%2Fwww.mathworks.com%2Fmatlabcentral%2Fmlc-downloads%2Fdownloads%2F546a7456-aca3-464b-9ad1-72ae46c23ff1%2F1740580112%2Ffiles%2FmainSimulatedData.mlx&embed=web) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainSimulatedData.mlx) | 
| `mainRetail.mlx`: generate Figures 7-10 | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://viewer.mathworks.com/?viewer=live_code&url=https%3A%2F%2Fwww.mathworks.com%2Fmatlabcentral%2Fmlc-downloads%2Fdownloads%2F546a7456-aca3-464b-9ad1-72ae46c23ff1%2F1740580112%2Ffiles%2FmainEsselunga.mlx&embed=web) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainRetail.mlx) | 
| `mainSimulatedData_Interactive.m`: generate the interactive version of Figures 3, 4 and 6 | [mainSimulatedData_Interactive.m](https://github.com/UniprJRC/2025tobit/blob/main/mainSimulatedData_Interactive.m) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainSimulatedData_Interactive.m) | 
| `mainRetail_Interactive.m`: generate the interactive version of Figures 9 and 10 | [mainRetail_Interactive.m](https://github.com/UniprJRC/2025tobit/blob/main/mainRetail_Interactive.m) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainRetail_Interactive.m) | 
|



![GitHub top language](https://img.shields.io/github/languages/top/UniprJRC/2025tobit)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/UniprJRC/2025tobit)
[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/180239-censored-regression-using-extended-box-cox-transformations)


[![GitHub contributors](https://img.shields.io/github/contributors/UniprJRC/2025tobit)](https://github.com/UniprJRC/2025tobit/graphs/contributors)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/UniprJRC/2025tobit/graphs/commit-activity)
![master](https://img.shields.io/github/last-commit/badges/shields/master)
