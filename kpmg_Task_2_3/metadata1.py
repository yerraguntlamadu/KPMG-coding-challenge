from pprint import pprint
from googleapiclient import discovery
from oauth2client.client import GoogleCredentials
credentials = GoogleCredentials.get_application_default()
service = discovery.build('compute', 'v1', credentials=credentials)
project = "emerald-circle-374316"
zone = "us-west4-b"
instance = "instance-1"
request = service.instances().get(project=project, zone=zone, instance=instance)
response = request.execute()
pprint(response)

