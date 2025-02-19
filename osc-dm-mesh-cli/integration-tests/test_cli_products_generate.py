import json

from cli import main
import state

# Common for all CLI commands
HOST="localhost"
PORT="24000"

# NAMESPACE="brodagroupsoftware.com" ;
# NAME="rmi.dataproduct" ;
# TAGS="utilities,emissions" ;
# DESCRIPTION="Some short description" ;
# DATA_URL="Some data url" ;
# OUTPUT_DIRECTORY="./output" ;
# PRODUCT_YAML="product.yaml" ;
# python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
#     --generate \
#     --namespace "$NAMESPACE" \
#     --name "$NAME" \
#     --tags "$TAGS" \
#     --data "$DATA_URL" \
#     --description "$DESCRIPTION" \
#     --directory "$OUTPUT_DIRECTORY" \
#     --filename "$PRODUCT_YAML"
def test_generate_product_manual():
    TAGS = "population,buildings"
    NAMESPACE = "test-space"
    NAME = "test-name"
    DIRECTORY = "output1"
    FILENAME = "product.yaml"
    DESCRIPTION = "A short description"
    result = main([
        "--host", HOST,
        "--port", PORT,
        "products",
        "--generate",
        "--namespace", NAMESPACE,
        "--name", NAME,
        "--tags", TAGS,
        "--description", DESCRIPTION,
        "--directory", DIRECTORY,
        "--filename", FILENAME
    ])
    assert(result is not None)

# NAMESPACE="brodagroupsoftware.com" ;
# NAME="rmi.dataproduct" ;
# TAGS="utilities,emissions" ;
# URL="https://data.catalyst.coop/pudl" ;
# OUTPUT_DIRECTORY="./output" ;
# PRODUCT_YAML="product.yaml" ;
# VENDOR="OpenAI" ;
# MODEL="gpt-3.5-turbo" ;
# python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
#     --generate \
#     --namespace "$NAMESPACE" \
#     --name "$NAME" \
#     --tags "$TAGS" \
#     --url "$URL" \
#     --vendor "$VENDOR" \
#     --model "$MODEL" \
#     --directory "$OUTPUT_DIRECTORY" \
#     --filename "$PRODUCT_YAML"
def test_generate_product_llm():
    TAGS = "population,buildings"
    NAMESPACE = "test-space"
    NAME = "test-name2"
    DIRECTORY = "./output2"
    FILENAME = "product.yaml"
    URL = "https://www.eia.gov/electricity/data/eia860/"
    VENDOR = "OpenAI"
    MODEL = "gpt-3.5-turbo"
    result = main([
        "--host", HOST,
        "--port", PORT,
        "products",
        "--generate",
        "--namespace", NAMESPACE,
        "--name", NAME,
        "--tags", TAGS,
        "--url", URL,
        "--vendor", VENDOR,
        "--model", MODEL,
        "--directory", DIRECTORY,
        "--filename", FILENAME
    ])
    assert(result is not None)


# NAME="artifact-001" ;
# TAGS="utilities,emissions" ;
# DESCRIPTION="Some short description" ;
# DATA_URL="https://data.catalyst.coop/pudl/core_eia__entity_plants.csv?_size=max" ;
# OUTPUT_DIRECTORY="./output" ;
# ARTIFACT_YAML="$NAME.yaml" ;
# python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
#     --generate \
#     --name "$NAME" \
#     --tags "$TAGS" \
#     --data "$DATA_URL" \
#     --description "$DESCRIPTION" \
#     --directory "$OUTPUT_DIRECTORY" \
#     --filename "$ARTIFACT_YAML"
def test_generate_product_artifact_manual():
    TAGS = "population,buildings"
    NAME = "test-name1"
    URL = "https://data.catalyst.coop/pudl/core_eia__entity_plants"
    DATA_URL = URL + ".csv?_size=max"
    DESCRIPTION = "Some short description"
    DIRECTORY = "./output2"
    FILENAME = NAME + ".yaml"
    result = main([
        "--host", HOST,
        "--port", PORT,
        "products",
        "--generate",
        "--name", NAME,
        "--tags", TAGS,
        "--data", DATA_URL,
        "--description", DESCRIPTION,
        "--directory", DIRECTORY,
        "--filename", FILENAME
    ])
    assert(result is not None)


# ARTIFACT_TYPE="service" ;
# NAME="artifact-001" ;
# TAGS="population,buildings" ;
# DESCRIPTION="Some short description" ;
# DATA_URL="https://data.catalyst.coop/pudl/core_eia__entity_plants.csv?_size=max" ;
# OUTPUT_DIRECTORY="./output" ;
# ARTIFACT_YAML="$NAME.yaml" ;
# SERVICE_HOST="localhost" ;
# SERVICE_PORT="2000" ;
# python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
#     --generate \
#     --name "$NAME" \
#     --type "$ARTIFACT_TYPE" \
#     --tags "$TAGS" \
#     --data "$DATA_URL" \
#     --description "$DESCRIPTION" \
#     --directory "$OUTPUT_DIRECTORY" \
#     --filename "$ARTIFACT_YAML" \
#     --service_host "$SERVICE_HOST"
def test_generate_product_artifact_manual_with_service():
    ARTIFACT_TYPE = "service"
    TAGS = "population,buildings"
    NAME = "test-name2"
    URL = "https://data.catalyst.coop/pudl/core_eia__entity_plants"
    DATA_URL = URL + ".csv?_size=max"
    DESCRIPTION = "Some short description"
    DIRECTORY = "./output2"
    FILENAME = NAME + ".yaml"
    SERVICE_HOST = "localhost:2000"
    result = main([
        "--host", HOST,
        "--port", PORT,
        "products",
        "--generate",
        "--type", ARTIFACT_TYPE,
        "--name", NAME,
        "--tags", TAGS,
        "--data", DATA_URL,
        "--description", DESCRIPTION,
        "--directory", DIRECTORY,
        "--filename", FILENAME,
        "--service_host", SERVICE_HOST,
    ])
    assert(result is not None)

# NAME="artifact-001" ;
# TAGS="utilities,emissions" ;
# URL="https://data.catalyst.coop/pudl/core_eia__entity_plants" ;
# DATA_URL="$URL.csv?_size=max" ;
# OUTPUT_DIRECTORY="./output" ;
# ARTIFACT_YAML="$NAME.yaml" ;
# VENDOR="OpenAI" ;
# MODEL="gpt-3.5-turbo" ;
# python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
#     --generate \
#     --name "$NAME" \
#     --tags "$TAGS" \
#     --data "$DATA_URL" \
#     --url "$URL" \
#     --vendor "$VENDOR" \
#     --model "$MODEL" \
#     --directory "$OUTPUT_DIRECTORY" \
#     --filename "$ARTIFACT_YAML"
def test_generate_product_artifact_ai():
    TAGS = "population,buildings"
    NAME = "test-name3"
    URL = "https://data.catalyst.coop/pudl/core_eia__entity_plants"
    DATA_URL = URL + ".csv?_size=max"
    DIRECTORY = "./output2"
    FILENAME = NAME + ".yaml"
    VENDOR = "OpenAI"
    MODEL = "gpt-3.5-turbo"
    result = main([
        "--host", HOST,
        "--port", PORT,
        "products",
        "--generate",
        "--name", NAME,
        "--tags", TAGS,
        "--data", DATA_URL,
        "--url", URL,
        "--vendor", VENDOR,
        "--model", MODEL,
        "--directory", DIRECTORY,
        "--filename", FILENAME
    ])
    assert(result is not None)

