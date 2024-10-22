# Basic Setup
have docker running 


~~~~
cd E/Documents/workspace/osc-dm-mesh-cli
~~~~

~~~~
source ./bin/environment.sh
~~~~


~~~~
source $PROJECT_DIR/bin/vactivate.sh
~~~~


~~~~
HOST=localhost ;
PORT=20000 ;
VERBOSE="--verbose"
~~~~

# Before demo
 in the cli
~~~~
pytest ./integration-tests/test_cli_users.py
~~~~


# Getting the datamesh up and running

~~~~
cd E/Documents/workspace/osc-dm-mesh-srv/
~~~~


~~~~
source ./bin/environment.sh
$PROJECT_DIR/app/startd.sh
~~~~


# Getting the data product up and running

in seperate terminal
~~~~
cd E/Documents/workspace/osc-dm-mesh-srv/
~~~~

~~~~
source ./bin/environment.sh
$PROJECT_DIR/app/startd.sh 0 pudl
~~~~

from CLI
~~~~
SAMPLES_DIR="E:/Documents/workspace/osc-dm-samples-dat";
NAMESPACE="brodagroupsoftware.com" ;
NAME="pudl.dataproduct" ;
TAGS="utilities,emissions" ;
URL="https://data.catalyst.coop/pudl" ;
OUTPUT_DIRECTORY="$SAMPLES_DIR/dataproducts/pudl" ;
PRODUCT_YAML="product.yaml" ;
VENDOR="OpenAI" ;
MODEL="gpt-3.5-turbo" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --namespace "$NAMESPACE" \
    --name "$NAME" \
    --tags "$TAGS" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$PRODUCT_YAML"
~~~~


~~~~
SAMPLES_DIR="E:/Documents/workspace/osc-dm-samples-dat";
NAME="artifact-001" ;
TAGS="utilities,emissions" ;
URL="https://data.catalyst.coop/pudl/core_eia__entity_plants" ;
DATA_URL="$URL.csv?_size=max" ;
OUTPUT_DIRECTORY="$SAMPLES_DIR/dataproducts/pudl" ;
ARTIFACT_YAML="$NAME.yaml" ;
VENDOR="OpenAI" ;
MODEL="gpt-3.5-turbo" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --url "$URL" \
    --vendor "$VENDOR" \
    --model "$MODEL" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"
~~~~


~~~~
SAMPLES_DIR="E:/Documents/workspace/osc-dm-samples-dat";
DATAPRODUCT_DIR="$SAMPLES_DIR/dataproducts/pudl";
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --assign \
    --directory "$DATAPRODUCT_DIR"
~~~~