# Robust Tobit Regression for Censored Observations Using Extended Box-Cox Transformations

Code to reproduce the figures of paper "Robust Tobit Regression for Censored Observations Using Extended Box-Cox Transformations"

Note: in order to run the files below you need to have [FSDA toolbox](https://https://www.mathworks.com/matlabcentral/fileexchange/72999-fsda-flexible-statistics-data-analysis-toolbox) installed

**Abstract**

Truncated regression data often occur in measuring consumer behaviour involving infrequent purchases. We consider  data  with truncation of the upper and lower tails of the response distribution at arbitrary values. If, in addition,  the distribution of responses is also skewed, we use robust transformations of the response with the parametric Yeo-Johnson transformation to provide approximate normality for both positive and negative responses. Tests for the value of the transformation parameter use the signed square root of the loglikelihood ratio test. To achieve robustness  we use the Forward Search which fits the model to data subsets of increasing size and so orders the observations by closeness to the fitted model.  Monitoring the  statistic for  transformation  during the Forward Search, indicates an appropriate transformation.  We initially exhibit the properties of our procedure  on simulated data. Our practical regression analysis is of 493 observations derived from loyalty card data. 100 of the responses are censored at zero and there are ten explanatory variables.


| FileName | View :eyes:| Run ▶️ |
| -------- | ---- | --- |
|`mainSimulatedData.mlx`: generate Figures 1-6  | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](TODO) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainSimulatedData.mlx) | 
| `mainEsselunga.mlx`: generate Figures 7-10 | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](TODO) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainEsselunga.mlx) | 
| `mainSimulatedData_Interactive.m`: generate the interactive version of Figures 3, 4 and 6 | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](TODO) |  [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainSimulatedData_Interactive.m) | 
| `mainEsselunga_Interactive.m`: generate the interactive version of Figures 9 and 10 | [![File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](TODO) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=UniprJRC/2025tobit&file=mainEsselunga_Interactive.m) | 
|