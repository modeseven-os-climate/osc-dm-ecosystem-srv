from os import listdir
import re

data_dir = "C:/Users/graeh/OneDrive/Desktop/data/data"

from os.path import isfile, join
files = [f for f in listdir(data_dir) if isfile(join(data_dir, f))]



def create_headers(output_file="river_extent_gen.sh"):
    text = ('HOST=localhost ;\n'
            'PORT=20000 ;\n'
            'VERBOSE="--verbose"\n'
            'OUTPUT_DIRECTORY="./output" ;\n'
            '\n\n')

    with open(output_file, 'a') as my_file:
        my_file.write(text)

def write_to_file(text, output_file="river_extent_gen.sh"):
    with open(output_file, 'a') as my_file:
        my_file.write(text)


def create_command(name, tags, description, data_url):
    template = ('NAME="{}" ;\n'
                'TAGS="{}" ;\n'
                'DESCRIPTION="{}" ;\n'
                'DATA_URL="{}" ;\n'
                'OUTPUT_DIRECTORY="./output" ;\n'
                'ARTIFACT_YAML="$NAME.yaml" ;\n'
                'python ./src/cli.py $VERBOSE --host $HOST --port $PORT products '
                '    --generate '
                '    --name "$NAME" '
                '    --tags "$TAGS" '
                '    --data "$DATA_URL" '
                '    --description "$DESCRIPTION" '
                '    --directory "$OUTPUT_DIRECTORY" '
                '    --filename "$ARTIFACT_YAML"\n'
                '\n\n')

    cmd = template.format(name, tags, description, data_url)
    write_to_file(cmd)



create_headers()


River_flood_extent_X_Y_Z_no_protection_regex = r'River_flood_extent_(.*?)_(.*?)_(.*?)_no_protection\..*'
River_flood_extent_X_Y_Z_no_protection_description = """
Flood extent - no protection
Start year: {}
End year: {}
Scenario: {}
"""


River_flood_extent_X_Y_Z_with_protection_regex = r"River_flood_extent_(.*?)_(.*?)_(.*?)_with_protection\..*"
River_flood_extent_X_Y_Z_with_protection_description = """
Flood extent - with protection
Start year: {}
End year: {}
Scenario: {}
"""


River_flood_depth_X_Y_Z_R_regex = r"River_flood_depth_(.*?)_(.*?)_(.*?)_([^_]+)\..*"
River_flood_depth_X_Y_Z_R_description = """
River flood depth
Start year: {}
End year: {}
Scenario: {}
Resolution: {}
"""


River_discharge_X_Y_Z_regex = r"River_discharge_(.*?)_(.*?)_(.*?)\..*"
River_discharge_X_Y_Z_description = """
River Discharge
start year: {}
end year: {}
scenario: {}
"""


River_return_periods_X_Y_Z_regex = r"River_return_periods_(.*?)_(.*?)_(.*?)\..*"
River_return_periods_X_Y_Z_description = """
River return periods
start year: {}
end year: {}
scenario: {}
"""



for f in files:
    url = "https://data.4tu.nl/articles/dataset/Pan-European_data_sets_of_river_flood_probability_of_occurrence_under_present_and_future_climate/12708122"
    data_url = "https://data.4tu.nl/articles/dataset/Pan-European_data_sets_of_river_flood_probability_of_occurrence_under_present_and_future_climate/12708122"
    tags = "flood,rain"
    path = data_dir + f
    if re.match(River_flood_extent_X_Y_Z_no_protection_regex, f) is not None:
        match = re.search(River_flood_extent_X_Y_Z_no_protection_regex, f)
        start_year, end_year, scenario = match.groups()
        description = River_flood_extent_X_Y_Z_no_protection_description.format(start_year, end_year, scenario)
        name = f
        create_command(name, tags, description, data_url)
        print(f)

    elif re.match(River_flood_extent_X_Y_Z_with_protection_regex, f) is not None:
        match = re.search(River_flood_extent_X_Y_Z_with_protection_regex, f)
        start_year, end_year, scenario = match.groups()
        description = River_flood_extent_X_Y_Z_with_protection_description.format(start_year, end_year, scenario)
        name = f
        create_command(name, tags, description, data_url)
        print(f)

    elif re.match(River_flood_depth_X_Y_Z_R_regex, f) is not None:
        match = re.search(River_flood_depth_X_Y_Z_R_regex, f)
        start_year, end_year, scenario, resolution = match.groups()
        description = River_flood_depth_X_Y_Z_R_description.format(start_year, end_year, scenario, resolution)
        name = f
        create_command(name, tags, description, data_url)
        print(f)

    elif re.match(River_discharge_X_Y_Z_regex, f) is not None:
        match = re.search(River_discharge_X_Y_Z_regex, f)
        start_year, end_year, scenario = match.groups()
        description = River_discharge_X_Y_Z_description.format(start_year, end_year, scenario)
        name = f
        create_command(name, tags, description, data_url)
        print(f)

    elif re.match(River_return_periods_X_Y_Z_regex, f) is not None:
        match = re.search(River_return_periods_X_Y_Z_regex, f)
        start_year, end_year, scenario = match.groups()
        description = River_return_periods_X_Y_Z_description.format(start_year, end_year, scenario)
        name = f
        create_command(name, tags, description, data_url)
        print(f)



files = [f for f in listdir(data_dir) if isfile(join(data_dir, f))]
print(len(files))