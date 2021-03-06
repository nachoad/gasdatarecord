# Gas Data Record
### A data record of each time I fill up the gasoline of my car
#### Table of contents
1. [Hearders of cvs file](https://github.com/nachoad/gasdatarecord#the-data-i-usually-note-are)
2. [R Stats](https://github.com/nachoad/gasdatarecord#some-r-data-from-this-data)
3. [Charts](https://github.com/nachoad/gasdatarecord#charts)

#### The data I usually note are:

|Names      | Description                             |
|-----------|-----------------------------------------|
|id         | Identifier                              |
|date       | The date I refuel the car               |
|totKm      | Total of kilometers done with my car    |
|eLiter     | The price of 1L of gasoline (in Euros)  |
|euros      | Final price of the refuel               |
|liters     | The number of liters                    |
|km         | Kilometers done from previous refuel    |
__(gdata.csv file)__

#### Some R data from this data:

| eLiter         |  euros         |    liters     |        km        | 
|----------------| ---------------|---------------|------------------|
| Min.   :1.109  | Min.   :28.13  | Min.   :19.78 |  Min.   : 244.0  |
| 1st Qu.:1.301  | 1st Qu.:43.90  | 1st Qu.:33.15 |  1st Qu.: 387.5  |
| Median :1.371  | Median :47.91  | Median :35.01 |  Median : 440.0  |
| Mean   :1.364  | Mean   :46.89  | Mean   :34.44 |  Mean   : 469.9  | 
| 3rd Qu.:1.447  | 3rd Qu.:50.23  | 3rd Qu.:36.47 |  3rd Qu.: 491.8  | 
| Max.   :1.549  | Max.   :56.66  | Max.   :38.78 |  Max.   :2442.0  |

  
### Charts

#### Euros by liter for each year
![ebyliter](https://raw.githubusercontent.com/nachoad/gasdatarecord/master/imgs/euros_by_liter_trend.png)
#### Total kilometers driven
![ebyliter](https://raw.githubusercontent.com/nachoad/gasdatarecord/master/imgs/kms_driven.png)
