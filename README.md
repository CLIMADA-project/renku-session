# renku-session

## install packages from source code

```bash
echo install climada
cd ./climada_python
git checkout develop
pip install -e .
cd ..

echo install impact-forecasting-warning
cd ./impact-forecasting-warning
git checkout renku-env
pip install -e .
cd ..
```

## copy input files to climada data directory

```bash
mkdir ~/climada/data -p

for dafi in polybox-schmide/*; do
    echo $dafi
    cp $dafi ~/climada/data/
done
```

## alternative unzip gpw from zenodo

```bash
mkdir ~/climada/data -p

unzip *-zenodo.*/*.zip -d ~/climada/data
```

## run impact forecasting workflow

```bash
python -I -m impact_forecasting_warning.pipelines.wind_impact_forecast --n-days 3
```
