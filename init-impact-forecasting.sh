#!/usr/bin/bash

WD=/home/renku/work

echo install climada
cd $WD/climada_python
git checkout develop
pip install -e .

echo configure local data for climada
cp $WD/renku-session/climada.conf $WD/

echo install impact-forecasting-warning
cd $WD/impact-forecasting-warning
git checkout renku-env
pip install -e .

echo provide gpw input file
mkdir $WD/climada/data -p
unzip -u $WD/*-zenodo.*/*.zip -d $WD/climada/data

echo all set up. you\'re ready to go
echo try: \`python -I -m impact_forecasting_warning.pipelines.wind_impact_forecast --n-days 1\`
