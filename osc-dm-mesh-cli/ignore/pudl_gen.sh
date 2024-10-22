HOST=localhost ;
PORT=20000 ;
VERBOSE="--verbose"
OUTPUT_DIRECTORY="./output" ;

VENDOR="OpenAI" ;
MODEL="gpt-4o" ;

NAMESPACE="pudl" ;
NAME="pudl.dataproduct" ;
TAGS="utilities,emissions" ;
URL="https://data.catalyst.coop/pudl" ;
PRODUCT_YAML="pudl.yaml" ;
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


NAME="alembic_version" ;
URL="https://data.catalyst.coop/pudl/alembic_version" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__assn_boiler_cooling" ;
URL="https://data.catalyst.coop/pudl/core_eia860__assn_boiler_cooling" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__assn_boiler_generator" ;
URL="https://data.catalyst.coop/pudl/core_eia860__assn_boiler_generator" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__assn_boiler_stack_flue" ;
URL="https://data.catalyst.coop/pudl/core_eia860__assn_boiler_stack_flue" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__assn_yearly_boiler_emissions_control_equipment" ;
URL="https://data.catalyst.coop/pudl/core_eia860__assn_yearly_boiler_emissions_control_equipment" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_boilers" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_boilers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_emissions_control_equipment" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_emissions_control_equipment" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_generators" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_generators" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_generators_energy_storage" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_generators_energy_storage" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_generators_solar" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_generators_solar" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_generators_wind" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_generators_wind" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_ownership" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_ownership" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_plants" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860__scd_utilities" ;
URL="https://data.catalyst.coop/pudl/core_eia860__scd_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia860m__changelog_generators" ;
URL="https://data.catalyst.coop/pudl/core_eia860m__changelog_generators" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__assn_balancing_authority" ;
URL="https://data.catalyst.coop/pudl/core_eia861__assn_balancing_authority" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__assn_utility" ;
URL="https://data.catalyst.coop/pudl/core_eia861__assn_utility" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_advanced_metering_infrastructure" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_advanced_metering_infrastructure" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_balancing_authority" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_balancing_authority" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_demand_response" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_demand_response" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_demand_response_water_heater" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_demand_response_water_heater" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_demand_side_management_ee_dr" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_demand_side_management_ee_dr" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_demand_side_management_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_demand_side_management_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_demand_side_management_sales" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_demand_side_management_sales" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_distributed_generation_fuel" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_distributed_generation_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_distributed_generation_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_distributed_generation_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_distributed_generation_tech" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_distributed_generation_tech" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_distribution_systems" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_distribution_systems" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_dynamic_pricing" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_dynamic_pricing" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_energy_efficiency" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_energy_efficiency" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_green_pricing" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_green_pricing" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_mergers" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_mergers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_net_metering_customer_fuel_class" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_net_metering_customer_fuel_class" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_net_metering_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_net_metering_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_non_net_metering_customer_fuel_class" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_non_net_metering_customer_fuel_class" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_non_net_metering_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_non_net_metering_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_operational_data_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_operational_data_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_operational_data_revenue" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_operational_data_revenue" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_reliability" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_reliability" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_sales" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_sales" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_service_territory" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_service_territory" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_utility_data_misc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_utility_data_misc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_utility_data_nerc" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_utility_data_nerc" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia861__yearly_utility_data_rto" ;
URL="https://data.catalyst.coop/pudl/core_eia861__yearly_utility_data_rto" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__entity_coalmine" ;
URL="https://data.catalyst.coop/pudl/core_eia923__entity_coalmine" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_boiler_fuel" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_boiler_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_energy_storage" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_energy_storage" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_fuel_receipts_costs" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_fuel_receipts_costs" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_generation" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_generation" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_generation_fuel" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_generation_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia923__monthly_generation_fuel_nuclear" ;
URL="https://data.catalyst.coop/pudl/core_eia923__monthly_generation_fuel_nuclear" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_averaging_periods" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_averaging_periods" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_balancing_authorities" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_balancing_authorities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_balancing_authority_subregions" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_balancing_authority_subregions" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_boiler_generator_assn_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_boiler_generator_assn_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_boiler_status" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_boiler_status" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_boiler_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_boiler_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_coalmine_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_coalmine_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_contract_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_contract_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_cooling_system_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_cooling_system_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_cooling_tower_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_cooling_tower_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_cooling_water_sources" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_cooling_water_sources" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_cooling_water_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_cooling_water_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_emission_control_equipment_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_emission_control_equipment_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_energy_sources" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_energy_sources" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_environmental_equipment_manufacturers" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_environmental_equipment_manufacturers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_firing_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_firing_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_fuel_transportation_modes" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_fuel_transportation_modes" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_fuel_types_aer" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_fuel_types_aer" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_mercury_compliance_strategies" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_mercury_compliance_strategies" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_momentary_interruptions" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_momentary_interruptions" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_nox_compliance_strategies" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_nox_compliance_strategies" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_nox_control_status" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_nox_control_status" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_nox_units" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_nox_units" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_operational_status" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_operational_status" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_particulate_compliance_strategies" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_particulate_compliance_strategies" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_particulate_units" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_particulate_units" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_prime_movers" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_prime_movers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_regulations" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_regulations" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_reporting_frequencies" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_reporting_frequencies" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_sector_consolidated" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_sector_consolidated" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_so2_compliance_strategies" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_so2_compliance_strategies" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_so2_units" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_so2_units" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_sorbent_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_sorbent_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_steam_plant_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_steam_plant_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_storage_enclosure_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_storage_enclosure_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_storage_technology_types" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_storage_technology_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_wet_dry_bottom" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_wet_dry_bottom" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__codes_wind_quality_class" ;
URL="https://data.catalyst.coop/pudl/core_eia__codes_wind_quality_class" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__entity_boilers" ;
URL="https://data.catalyst.coop/pudl/core_eia__entity_boilers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__entity_generators" ;
URL="https://data.catalyst.coop/pudl/core_eia__entity_generators" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";

------
NAME="core_eia__entity_plants" ;
URL="https://data.catalyst.coop/pudl/core_eia__entity_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__entity_utilities" ;
URL="https://data.catalyst.coop/pudl/core_eia__entity_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eia__yearly_fuel_receipts_costs_aggs" ;
URL="https://data.catalyst.coop/pudl/core_eia__yearly_fuel_receipts_costs_aggs" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eiaaeo__yearly_projected_electric_sales" ;
URL="https://data.catalyst.coop/pudl/core_eiaaeo__yearly_projected_electric_sales" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eiaaeo__yearly_projected_generation_in_electric_sector_by_technology" ;
URL="https://data.catalyst.coop/pudl/core_eiaaeo__yearly_projected_generation_in_electric_sector_by_technology" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_eiaaeo__yearly_projected_generation_in_end_use_sectors_by_fuel_type" ;
URL="https://data.catalyst.coop/pudl/core_eiaaeo__yearly_projected_generation_in_end_use_sectors_by_fuel_type" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_epa__assn_eia_epacamd" ;
URL="https://data.catalyst.coop/pudl/core_epa__assn_eia_epacamd" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_epa__assn_eia_epacamd_subplant_ids" ;
URL="https://data.catalyst.coop/pudl/core_epa__assn_eia_epacamd_subplant_ids" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__codes_power_purchase_types" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__codes_power_purchase_types" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_balance_sheet_assets_sched110" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_balance_sheet_assets_sched110" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_balance_sheet_liabilities_sched110" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_balance_sheet_liabilities_sched110" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_cash_flows_sched120" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_cash_flows_sched120" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_depreciation_by_function_sched219" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_depreciation_by_function_sched219" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_depreciation_changes_sched219" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_depreciation_changes_sched219" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_depreciation_summary_sched336" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_depreciation_summary_sched336" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_energy_dispositions_sched401" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_energy_dispositions_sched401" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_energy_sources_sched401" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_energy_sources_sched401" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_hydroelectric_plants_sched406" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_hydroelectric_plants_sched406" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_income_statements_sched114" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_income_statements_sched114" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_operating_expenses_sched320" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_operating_expenses_sched320" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_operating_revenues_sched300" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_operating_revenues_sched300" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_other_regulatory_liabilities_sched278" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_other_regulatory_liabilities_sched278" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_plant_in_service_sched204" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_plant_in_service_sched204" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_pumped_storage_plants_sched408" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_pumped_storage_plants_sched408" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_purchased_power_and_exchanges_sched326" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_purchased_power_and_exchanges_sched326" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_retained_earnings_sched118" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_retained_earnings_sched118" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_sales_by_rate_schedules_sched304" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_sales_by_rate_schedules_sched304" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_small_plants_sched410" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_small_plants_sched410" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_steam_plants_fuel_sched402" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_steam_plants_fuel_sched402" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_steam_plants_sched402" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_steam_plants_sched402" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_transmission_lines_sched422" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_transmission_lines_sched422" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc1__yearly_utility_plant_summary_sched200" ;
URL="https://data.catalyst.coop/pudl/core_ferc1__yearly_utility_plant_summary_sched200" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc714__respondent_id" ;
URL="https://data.catalyst.coop/pudl/core_ferc714__respondent_id" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_ferc__codes_accounts" ;
URL="https://data.catalyst.coop/pudl/core_ferc__codes_accounts" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_gridpathratoolkit__assn_generator_aggregation_group" ;
URL="https://data.catalyst.coop/pudl/core_gridpathratoolkit__assn_generator_aggregation_group" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_nrelatb__yearly_projected_cost_performance" ;
URL="https://data.catalyst.coop/pudl/core_nrelatb__yearly_projected_cost_performance" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_nrelatb__yearly_projected_financial_cases" ;
URL="https://data.catalyst.coop/pudl/core_nrelatb__yearly_projected_financial_cases" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_nrelatb__yearly_projected_financial_cases_by_scenario" ;
URL="https://data.catalyst.coop/pudl/core_nrelatb__yearly_projected_financial_cases_by_scenario" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_nrelatb__yearly_technology_status" ;
URL="https://data.catalyst.coop/pudl/core_nrelatb__yearly_technology_status" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_eia_pudl_plants" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_eia_pudl_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_eia_pudl_utilities" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_eia_pudl_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_ferc1_dbf_pudl_utilities" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_ferc1_dbf_pudl_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_ferc1_pudl_plants" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_ferc1_pudl_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_ferc1_pudl_utilities" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_ferc1_pudl_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_ferc1_xbrl_pudl_utilities" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_ferc1_xbrl_pudl_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__assn_utilities_plants" ;
URL="https://data.catalyst.coop/pudl/core_pudl__assn_utilities_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__codes_data_maturities" ;
URL="https://data.catalyst.coop/pudl/core_pudl__codes_data_maturities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__codes_datasources" ;
URL="https://data.catalyst.coop/pudl/core_pudl__codes_datasources" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__codes_subdivisions" ;
URL="https://data.catalyst.coop/pudl/core_pudl__codes_subdivisions" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__entity_plants_pudl" ;
URL="https://data.catalyst.coop/pudl/core_pudl__entity_plants_pudl" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="core_pudl__entity_utilities_pudl" ;
URL="https://data.catalyst.coop/pudl/core_pudl__entity_utilities_pudl" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia860__yearly_emissions_control_equipment" ;
URL="https://data.catalyst.coop/pudl/out_eia860__yearly_emissions_control_equipment" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia860__yearly_ownership" ;
URL="https://data.catalyst.coop/pudl/out_eia860__yearly_ownership" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia861__yearly_balancing_authority_service_territory" ;
URL="https://data.catalyst.coop/pudl/out_eia861__yearly_balancing_authority_service_territory" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia861__yearly_utility_service_territory" ;
URL="https://data.catalyst.coop/pudl/out_eia861__yearly_utility_service_territory" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__boiler_fuel" ;
URL="https://data.catalyst.coop/pudl/out_eia923__boiler_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__fuel_receipts_costs" ;
URL="https://data.catalyst.coop/pudl/out_eia923__fuel_receipts_costs" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__generation" ;
URL="https://data.catalyst.coop/pudl/out_eia923__generation" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__generation_fuel_combined" ;
URL="https://data.catalyst.coop/pudl/out_eia923__generation_fuel_combined" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_boiler_fuel" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_boiler_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_fuel_receipts_costs" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_fuel_receipts_costs" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_generation" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_generation" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_generation_fuel_by_generator" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_generation_fuel_by_generator" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_generation_fuel_by_generator_energy_source" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_generation_fuel_by_generator_energy_source" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__monthly_generation_fuel_combined" ;
URL="https://data.catalyst.coop/pudl/out_eia923__monthly_generation_fuel_combined" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_boiler_fuel" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_boiler_fuel" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_fuel_receipts_costs" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_fuel_receipts_costs" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_generation" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_generation" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_generation_fuel_by_generator" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_generation_fuel_by_generator" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_generation_fuel_by_generator_energy_source" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_generation_fuel_by_generator_energy_source" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_generation_fuel_by_generator_energy_source_owner" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_generation_fuel_by_generator_energy_source_owner" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia923__yearly_generation_fuel_combined" ;
URL="https://data.catalyst.coop/pudl/out_eia923__yearly_generation_fuel_combined" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__monthly_generators" ;
URL="https://data.catalyst.coop/pudl/out_eia__monthly_generators" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_boilers" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_boilers" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_generators" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_generators" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_generators_by_ownership" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_generators_by_ownership" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_plant_parts" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_plant_parts" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_plants" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_eia__yearly_utilities" ;
URL="https://data.catalyst.coop/pudl/out_eia__yearly_utilities" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_all_plants" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_all_plants" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_balance_sheet_assets_sched110" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_balance_sheet_assets_sched110" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_balance_sheet_liabilities_sched110" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_balance_sheet_liabilities_sched110" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_cash_flows_sched120" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_cash_flows_sched120" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_depreciation_by_function_sched219" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_depreciation_by_function_sched219" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_depreciation_changes_sched219" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_depreciation_changes_sched219" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_depreciation_summary_sched336" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_depreciation_summary_sched336" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_energy_dispositions_sched401" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_energy_dispositions_sched401" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_energy_sources_sched401" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_energy_sources_sched401" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_hydroelectric_plants_sched406" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_hydroelectric_plants_sched406" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_income_statements_sched114" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_income_statements_sched114" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_operating_expenses_sched320" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_operating_expenses_sched320" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_operating_revenues_sched300" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_operating_revenues_sched300" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_other_regulatory_liabilities_sched278" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_other_regulatory_liabilities_sched278" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_plant_in_service_sched204" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_plant_in_service_sched204" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_pumped_storage_plants_sched408" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_pumped_storage_plants_sched408" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_purchased_power_and_exchanges_sched326" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_purchased_power_and_exchanges_sched326" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_rate_base" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_rate_base" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_retained_earnings_sched118" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_retained_earnings_sched118" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_sales_by_rate_schedules_sched304" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_sales_by_rate_schedules_sched304" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_small_plants_sched410" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_small_plants_sched410" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_steam_plants_fuel_by_plant_sched402" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_steam_plants_fuel_by_plant_sched402" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_steam_plants_fuel_sched402" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_steam_plants_fuel_sched402" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_steam_plants_sched402" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_steam_plants_sched402" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_transmission_lines_sched422" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_transmission_lines_sched422" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc1__yearly_utility_plant_summary_sched200" ;
URL="https://data.catalyst.coop/pudl/out_ferc1__yearly_utility_plant_summary_sched200" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc714__respondents_with_fips" ;
URL="https://data.catalyst.coop/pudl/out_ferc714__respondents_with_fips" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_ferc714__summarized_demand" ;
URL="https://data.catalyst.coop/pudl/out_ferc714__summarized_demand" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="out_pudl__yearly_assn_eia_ferc1_plant_parts" ;
URL="https://data.catalyst.coop/pudl/out_pudl__yearly_assn_eia_ferc1_plant_parts" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="_core_eia860__cooling_equipment" ;
URL="https://data.catalyst.coop/pudl/_core_eia860__cooling_equipment" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="_core_eia860__fgd_equipment" ;
URL="https://data.catalyst.coop/pudl/_core_eia860__fgd_equipment" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="_core_eia923__cooling_system_information" ;
URL="https://data.catalyst.coop/pudl/_core_eia923__cooling_system_information" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";


NAME="_core_eia923__fgd_operation_maintenance" ;
URL="https://data.catalyst.coop/pudl/_core_eia923__fgd_operation_maintenance" ;
DATA_URL="$URL.csv?_size=max" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML";