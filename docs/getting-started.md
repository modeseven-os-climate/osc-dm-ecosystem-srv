# Getting Started

## Prerequisites

There are a few requirements for your environment:
- Docker and Docker Compose is used as a run-time environment; All
of the services are packaged as containers and we use Docker Compose
as a simple way for you to get started (in a production setting
we use OpenShift, Kubernetes, and any cloud-variant of Kubernetes)
- If you are using the CLI (and you probably will), then Python
must be available, preferably in a virtual environment (venv)

## Starting the Ecosystem Platform

Docker images are currently not available via OS-Climate, so
we will use the original Docker images available on DockerHub.
The images are available in dockerhub under the username: "brodagroupsoftware".

If you wish to build the system and create your own
Docker images then follow the [Buiding the Ecosystem Guide](/docs/old/building-platform.mdm.md).

### Some Basic Preparation

We provide several scripts that make it easier to build and run
the Ecosystem Platform components.  They do, however, expect a small set
of environment variables:
- HOME_DIR: This points to your workspace top level directory; Components
will be cloned into this directory, and all component scripts expect this
to be in place for build and run scripts to work
- DOCKERHUB_USERNAME: Your docker user name which is used to specify your Docker images
- DOCKERHUB_TOKEN: A valid Docker Hub token to publish your images (note
that this is OPTIONAL and is not required unless you wish to publish your
docker images to a public image repository)
- SAMPLES_DIR: This points to the directory containing sample data;
This is only required for a few components and will be note where needed

So, set "HOME_DIR" environment variable (typically in your
personal environment script) to your workspace top level.

For example, I use bash/zsh as my shell environment/tool
and I put the following into my "~/.zshrc" (as shown below,
under my personal home directory, I have
a "Development/scratch" directory, but you can change this
to anything you wish):
~~~~
export HOME_DIR="<PATH TOO DIRECTORY CONTAINING osc-dm-ecosystem-srv>"
~~~~

## Bootstrapping the Ecosystem Platform

The Ecosystem Platform can be started using the following
commands which will pull all necessary Docker images (under
the "brodagroupsoftware" username).

first, run the dockerize script with the following command to create local docker images required for the ecosystem
~~~
bin/dockerize.sh
~~~

Next, change your current working directory to the
created directory.
~~~~
cd osc-dm-mesh-srv
~~~~

Now, setup your environment:
~~~~
source ./bin/environment.sh
~~~~

Note that we have already setup Docker images under the Docker username
"brodagroupsoftware" which should allow you to pull images.  If you
choose to build the system (see [Building the Platform](/docs/old/building-platform.mdm.md))
then you will need to set your own Docker Hub username.

After setting up your environment, you will see setup several environment
variables that are used by the platform (something like the following).
~~~~
USER_NAME:          ericbroda
HOME_DIR:           /Users/ericbroda/Development/scratch
DOCKERHUB_USERNAME: brodagroupsoftware
DOCKERHUB_TOKEN:    ****
ROOT_DIR:           /Users/ericbroda/Development/scratch
PROJECT:            osc-dm-mesh-srv
PROJECT_DIR:        /Users/ericbroda/Development/scratch/osc-dm-mesh-srv
PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION: python
~~~~

Finally, start the platform (make sure Docker is running):
~~~~
$PROJECT_DIR/app/startd.sh
~~~~

This will get the core components running and available. You should
see several Docker images running:
~~~~
docker ps

CONTAINER ID   IMAGE                                             COMMAND                  CREATED         STATUS         PORTS                              NAMES
42ab62c65dd7   brodagroupsoftware/osc-dm-search-srv:latest       "python3 /app/server…"   4 seconds ago   Up 2 seconds   0.0.0.0:23000->8000/tcp            docker-osc-dm-search-srv-1
1716d89280c8   brodagroupsoftware/osc-dm-registrar-srv:latest    "python3 /app/server…"   4 seconds ago   Up 2 seconds   0.0.0.0:21000->8000/tcp            docker-osc-dm-registrar-srv-1
df7f9487cd67   brodagroupsoftware/osc-dm-proxy-srv:latest        "python3 /app/server…"   5 seconds ago   Up 2 seconds   0.0.0.0:20000->8000/tcp            docker-osc-dm-proxy-srv-1
06476365d0d5   brodagroupsoftware/osc-dm-marketplace-ux:latest   "docker-entrypoint.s…"   5 seconds ago   Up 2 seconds   0.0.0.0:3000->3000/tcp             docker-osc-dm-marketplace-ux-1
a0448815f89b   quay.io/coreos/etcd:v3.5.0                        "/usr/local/bin/etcd"    5 seconds ago   Up 3 seconds   0.0.0.0:2379-2380->2379-2380/tcp   docker-etcd1-1
5c34be81afa3   quay.io/coreos/etcd:v3.5.0                        "/usr/local/bin/etcd"    5 seconds ago   Up 3 seconds   2379-2380/tcp                      docker-etcd2-1
3f6ad9e74091   quay.io/coreos/etcd:v3.5.0                        "/usr/local/bin/etcd"    5 seconds ago   Up 3 seconds   2379-2380/tcp                      docker-etcd3-1
~~~~

Next, we will bootstrap a data product.



## Creating Users

in a seperate window, open the osc-dm-mesh-cli folder and run the following commands:

~~~
export HOME_DIR="<PATH TOO DIRECTORY CONTAINING osc-dm-ecosystem-srv>"
source ./bin/environment.sh
~~~

NOTE: if you are a Windows user, you will need to have python 3 installed and runnable with the "python" command

if this is your first time running the repository, you will need to run and activate your virtual environment 
with the following commands:

~~~
source bin/venv.sh
source bin/vactivate.sh
~~~

install the python requirements with the following command:
~~~
pip install -r requirements.txt
~~~

Before creating the users, you will need to set some variables that will be used by all commands:

~~~
HOST=localhost ;
PORT=20000 ;
~~~

from the CLI terminal, generate the users with the following command
this is only needed if you want to view your product from the CLI.
~~~
ROLE="subscriber" ;
GUEST_EMAIL="subscriber.user@brodagroupsoftware.com" ;
NAME="Subscriber User" ;
PHONE="+1 647.555.1212" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT users \
    --register \
    --role "$ROLE" \
    --name "$NAME" \
    --email "$GUEST_EMAIL" \
    --phone "$PHONE"
~~~

additionally, you will have to create a publisher user.
~~~
ROLE="publisher" ;
GUEST_EMAIL="publisher.user@brodagroupsoftware.com" ;
NAME="Publisher User" ;
PHONE="+1 647.555.1212" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT users \
    --register \
    --role "$ROLE" \
    --name "$NAME" \
    --email "$GUEST_EMAIL" \
    --phone "$PHONE"
~~~

NOTE: if you restart the osc-dm-mesh-srv docker compose, you will need to recreate the users with the same steps

# setting up a data product


In whatever location you want, create a directory that will hold the data product. the DATA_DIR value is the directory 
where the data product files will be kept. This can be located anywhere on the local system

we have a default data directory being created in the root of the project, however, you can change this to your usecase.



~~~
mkdir $ROOT_DIR/data_dir
export DATA_DIR="$ROOT_DIR/data_dir"
mkdir $DATA_DIR/dataproducts
mkdir $DATA_DIR/dataproducts/arfima
~~~

from the CLI terminal window, set up your environment as follows:
~~~~
HOST=localhost ;
PORT=20000 ;
VERBOSE="--verbose"
~~~~

create a product by manually specifying parameters

parameters are as follows:

| Parameter        | Description                                                                    |
|------------------|--------------------------------------------------------------------------------|
| NAMESPACE        | Identifier for your groups of products, typically your company name            | 
| NAME             | Name of the data product being created                                         | 
| TAGS             | comma separated list of tags, no spaces, from the 'config/hierarchy.yaml' file | 
| DESCRIPTION      | Text Description of the data product                                           | 
| OUTPUT_DIRECTORY | directory where output files will be placed                                    | 
| PRODUCT_YAML     | name of the product yaml file that will be created                             | 


~~~
NAMESPACE="arfima.com" ;
NAME="arfima.floods" ;
TAGS="population,buildings" ;
DESCRIPTION="Some short description" ;
OUTPUT_DIRECTORY="$DATA_DIR/dataproducts/arfima" ;
PRODUCT_YAML="product.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --namespace "$NAMESPACE" \
    --name "$NAME" \
    --tags "$TAGS" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$PRODUCT_YAML"
~~~

you should have an output file with the following contents in your data directory:
~~~
product:
  description: Some short description
  endpoints:
    administration: http://localhost:9999/administration
    discovery: http://localhost:9999/discovery
    observability: http://localhost:9999/observability
  name: arfima.floods
  namespace: arfima.com
  publisher: publisher.user@brodagroupsoftware.com
  tags:
  - population
  - buildings
~~~


create artifact by manually specifying parameters

parameters are as follows:

| Parameter        | Description                                                                    |
|------------------|--------------------------------------------------------------------------------|
| ARTIFACT_TYPE    | current options are: "data" and "service"                                      | 
| NAME             | Name of the data product being created                                         | 
| TAGS             | comma separated list of tags, no spaces, from the 'config/hierarchy.yaml' file | 
| DATA_URL         | a valid URL pointing to the actual artifact                                    | 
| DESCRIPTION      | Text Description of the data product                                           | 
| OUTPUT_DIRECTORY | directory where output files will be placed                                    | 
| ARTIFACT_YAML    | name of the artifact yaml file that will be created                            | 

~~~
ARTIFACT_TYPE="data" ;
NAME="artifact-001" ;
TAGS="population,buildings" ;
DESCRIPTION="Some short description" ;
DATA_URL="https://data.catalyst.coop/pudl/core_eia__entity_plants.csv?_size=max" ;
OUTPUT_DIRECTORY="$DATA_DIR/dataproducts/arfima" ;
ARTIFACT_YAML="$NAME.yaml" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML"
~~~

you should have an artifact.yaml file in your data directory with the following content:
~~~
artifact:
  description: Some short description
  license: CDLA 2.0, Permissive, Version 2.0
  links:
  - mimetype: text/csv
    relationship: artifact
    url: https://data.catalyst.coop/pudl/core_eia__entity_plants.csv?_size=max
  - mimetype: text/csv
    relationship: sample
    url: placeholder-sample.csv
  - mimetype: application/json
    relationship: metadata
    url: placeholder-metadata.json
  name: artifact-001
  securitypolicy: public
  tags:
  - population
  - buildings
~~~

generate a second artifact that is a service for an API
~~~
ARTIFACT_TYPE="service" ;
NAME="artifact-002" ;
TAGS="population,buildings" ;
DESCRIPTION="Some short description" ;
DATA_URL="https://data.catalyst.coop/pudl/core_eia__entity_plants.csv?_size=max" ;
OUTPUT_DIRECTORY="$DATA_DIR/dataproducts/arfima" ;
ARTIFACT_YAML="$NAME.yaml" ;
SERVICE_HOST="localhost" ;
SERVICE_PORT="2000" ;
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --generate \
    --name "$NAME" \
    --tags "$TAGS" \
    --data "$DATA_URL" \
    --description "$DESCRIPTION" \
    --directory "$OUTPUT_DIRECTORY" \
    --filename "$ARTIFACT_YAML" \
    --service_host "$SERVICE_HOST" \
    --service_port "$SERVICE_PORT"
~~~



from the osc-dm-mesh-cli terminal run the following command to generate the UUIDs for the product:
~~~
DATAPRODUCT_DIR="$DATA_DIR/dataproducts/arfima";
python ./src/cli.py $VERBOSE --host $HOST --port $PORT products \
    --assign \
    --directory "$DATAPRODUCT_DIR"
~~~


you should have an output uuids.yaml file in your data directory with contents similar to the following:

~~~
product_uuid: f8566485-f376-43bb-b381-8885bea9ff92  
artifact_uuids: 
- artifact-001: 6ac3dd44-8831-40ce-856c-3ffb5253c66f
~~~

## Bootstrapping a Data Product

Next, change your current working directory to osc-dm-product-srv directory
~~~~
cd ../osc-dm-product-srv
~~~~

in env
Now, setup your environment:
~~~~
source ./bin/environment.sh
~~~~

the directory containing the data products can be found in bin/config.env

start the data mesh by running the following command:

~~~
app/startd.sh 0 arfima bin/config.env
~~~

## Viewing the data product

you should be able to see the new data product registered when you got to localhost:3000 on your browser

if prompted for login, use the following credentials
email/username: subscriber.user@brodagroupsoftware.com
password: any password
role: Subscriber