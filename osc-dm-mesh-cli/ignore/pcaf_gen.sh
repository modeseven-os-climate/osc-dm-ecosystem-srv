HOST=localhost ;
PORT=20000 ;
VERBOSE="--verbose"
OUTPUT_DIRECTORY="./output" ;

VENDOR="OpenAI" ;
MODEL="gpt-4o" ;

NAMESPACE="pcaf" ;
NAME="pcaf.dataproduct" ;
TAGS="utilities,emissions" ;
URL="https://carbonaccountingfinancials.com/en/about#our-mission" ;
PRODUCT_YAML="pcaf.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --namespace "$NAMESPACE" \
    --name "$NAME" \
    --tags "$TAGS" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$PRODUCT_YAML";



NAME="OECD" ;
TAGS="utilities,emissions" ;
DESCRIPTION="The emissions figures are based on summing for every country exports to all other countries.

# Indicator: IMGR_FCO2: Foreign CO2 emissions embodied in gross imports
OECD Indicators on Carbon dioxide (CO2) emissions embodied in international trade (TeCO2) are derived by combining the 2021 editions of OECD Inter-Country Input-Output (ICIO) Database and of International Energy Agency (IEA) statistics on CO2 emissions from fuel combustion. In this release of TeCO2, emissions from fuels used for international aviation and maritime transport (i.e. aviation and marine bunkers) are also considered.

## Industry D35: Electricity, gas, steam and air conditioning supply
Foreign CO2 emissions embodied in gross imports captures the foreign CO2 emissions embodied in gross imports of country/region c with origin in exporting industry i in exporting country/region partner p. Note: Regions are treated as a unit, i.e. IMGR_FCO2 excludes intra-regional trade, as so, intra-region flows are considered as domestic.

## Industry: DTOTAL: TOTAL
Foreign CO2 emissions embodied in gross imports captures the foreign CO2 emissions embodied in gross imports of country/region c with origin in exporting industry i in exporting country/region partner p. Note: Regions are treated as a unit, i.e. IMGR_FCO2 excludes intra-regional trade, as so, intra-region flows are considered as domestic.

# Indicator: EXGR_DCO2: Foreign CO2 emissions embodied in gross imports
OECD Indicators on Carbon dioxide (CO2) emissions embodied in international trade (TeCO2) are derived by combining the 2021 editions of OECD Inter-Country Input-Output (ICIO) Database and of International Energy Agency (IEA) statistics on CO2 emissions from fuel combustion. In this release of TeCO2, emissions from fuels used for international aviation and maritime transport (i.e. aviation and marine bunkers) are also considered.

## Industry: DTOTAL:TOTAL
EXGR_DCO2c,p,i, Domestic CO2 emissions embodied in gross exports, by industry i in country / region c to partner country/region p, represents the embodied CO2 emissions in exports that has been generated anywhere in the domestic economy (i.e. not just by the exporting industry). Note: Regions are treated as a unit, i.e., EXGR_DCO2 excludes intra-regional trade, as so, intra-region flows are considered as domestic." ;
DATA_URL="https://stats.oecd.org/sdmx-json/data/IO_GHG_2021/IMGR_FCO2+EXGR_DCO2...DTOTAL+D35/all?contentType=csv" ;
OUTPUT_DIRECTORY="./output" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"

NAME="UNFCCC" ;
TAGS="utilities,emissions" ;
DESCRIPTION="Dataset containing all greenhouse gas emissions data submitted by countries under climate change convention (including CRF data) as published by the UNFCCC secretariat at 2023-07-18" ;
DATA_URL="https://zenodo.org/records/8159736/files/parquet-only.zip" ;
OUTPUT_DIRECTORY="./output" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"


NAME="PRIMAP" ;
TAGS="utilities,emissions" ;
DESCRIPTION="Gütschow, J.; Pflüger, M. (2023): The PRIMAP-hist national historical emissions time series v2.4.2 (1750-2021). zenodo. doi:10.5281/zenodo.7727475.
Gütschow, J.; Jeffery, L.; Gieseke, R.; Gebel, R.; Stevens, D.; Krapp, M.; Rocha, M. (2016): The PRIMAP-hist national historical emissions time series, Earth Syst. Sci. Data, 8, 571-603, doi:10.5194/essd-8-571-2016

The PRIMAP-hist dataset combines several published datasets to create a comprehensive set of greenhouse gas emission pathways for every country and Kyoto gas, covering the years 1750 to 2021, and almost all UNFCCC (United Nations Framework Convention on Climate Change) member states as well as most non-UNFCCC territories. The data resolves the main IPCC (Intergovernmental Panel on Climate Change) 2006 categories. For CO2, CH4, and N2O subsector data for Energy, Industrial Processes and Product Use (IPPU), and Agriculture are available. The "country reported data priority" (CR) scenario of the PRIMAP-hist datset prioritizes data that individual countries report to the UNFCCC. For developed countries, AnnexI in terms of the UNFCCC, this is the data submitted anually in the "common reporting format" (CRF). For developing countries, non-AnnexI in terms of the UNFCCC, this is the data available through the UNFCCC DI interface (di.unfccc.int) with additional country submissions read from pdf and where available xls(x) or csv files. For a list of these submissions please see below. For South Korea the 2021 official GHG inventory has not yet been submitted to the UNFCCC but is included in PRIMAP-hist. PRIMAP-hist also includes official data for Taiwan which is not recognized as a party to the UNFCCC.

Gaps in the country reported data are filled using third party data such as CDIAC, BP (fossil CO2), Andrew cement emissions data (cement), FAOSTAT (agriculture), and EDGAR v7.0 (all sectors). Lower priority data are harmonized to higher priority data in the gap-filling process.

For the third party priority time series gaps in the third party data are filled from country reported data sources.

Data for earlier years which are not available in the above mentioned sources are sourced from EDGAR-HYDE, CEDS, and RCP (N2O only) historical emissions.

The v2.4 release of PRIMAP-hist reduced the time-lag from 2 to 1 years. Thus we include data for 2021 while the 2.3.1 version included data for 2019 only. For energy CO$_2$ growth rates from the BP statistical review of world energy are used to extend the country reported (CR) or CDIAC (TP) data to 2021. For CO$_2$ from cement production Andrew cement data are used. For other gases and sectors, EDGAR 7.0 is used since PRIMAP-hist v2.4.1 (v2,4 had to rely on numerical methods ).

Version 2.4.2 of the PRIMAP-hist dataset does not include emissions from Land Use, Land-Use Change, and Forestry (LULUCF) in the main file. LULUCF data are included in the file with increased number of significant digits and have to be used with care as they are constructed from different sources using different methodologies and are not harmonized.

The PRIMAP-hist v2.4.2 dataset is an updated version of

Gütschow, J.; Pflüger, M. (2023): The PRIMAP-hist national historical emissions time series v2.4.1 (1750-2021). zenodo. doi:10.5281/zenodo.7585420
The Changelog indicates the most important changes. You can also check the issue tracker on github.com/JGuetschow/PRIMAP-hist for additional information on issues found after the release of the dataset." ;
DATA_URL="https://zenodo.org/records/7727475/files/Guetschow-et-al-2023a-PRIMAP-hist_v2.4.2_final_no_rounding_09-Mar-2023.csv" ;
OUTPUT_DIRECTORY="./output" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"




NAME="Worldbank" ;
TAGS="utilities,emissions" ;
DESCRIPTION="Indicator Name: GDP (current US$)

GDP at purchaser's prices is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products. It is calculated without making deductions for depreciation of fabricated assets or for depletion and degradation of natural resources. Data are in current U.S. dollars. Dollar figures for GDP are converted from domestic currencies using single year official exchange rates. For a few countries where the official exchange rate does not reflect the rate effectively applied to actual foreign exchange transactions, an alternative conversion factor is used.

ID: NY.GDP.MKTP.CD

Source: World Bank national accounts data, and OECD National Accounts data files.

License:  CC BY-4.0

Aggregation Method: Gap-filled total

Periodicity: Annual



Indicator Name: GDP, PPP (current international $)

This indicator provides values for gross domestic product (GDP) expressed in current international dollars, converted by purchasing power parity (PPP) conversion factor. GDP is the sum of gross value added by all resident producers in the country plus any product taxes and minus any subsidies not included in the value of the products. PPP conversion factor is a spatial price deflator and currency converter that eliminates the effects of the differences in price levels between countries. From April 2020, “GDP: linked series (current LCU)” [NY.GDP.MKTP.CN.AD] is used as underlying GDP in local currency unit so that it’s in line with time series of PPP conversion factors for GDP, which are extrapolated with linked GDP deflators.

ID: NY.GDP.MKTP.PP.CD

Source: International Comparison Program, World Bank | World Development Indicators database, World Bank | Eurostat-OECD PPP Programme.

License:  CC BY-4.0

Aggregation Method: Gap-filled total

Periodicity: Annual


Indicator Name: Population, total

Total population is based on the de facto definition of population, which counts all residents regardless of legal status or citizenship. The values shown are midyear estimates.

ID: SP.POP.TOTL

Source: ( 1 ) United Nations Population Division. World Population Prospects: 2022 Revision. ( 2 ) Census reports and other statistical publications from national statistical offices, ( 3 ) Eurostat: Demographic Statistics, ( 4 ) United Nations Statistical Division. Population and Vital Statistics Reprot ( various years ), ( 5 ) U.S. Census Bureau: International Database, and ( 6 ) Secretariat of the Pacific Community: Statistics and Demography Programme.

License:  CC BY-4.0

Aggregation Method: Sum

Periodicity: Annual" ;
DATA_URL="https://api.worldbank.org/v2/country/all/indicator/NY.GDP.MKTP.CD;NY.GDP.MKTP.PP.CD;%20SP.POP.TOTL?source=2&downloadformat=csv" ;
OUTPUT_DIRECTORY="./output" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"