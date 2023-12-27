---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateSoftwarePostRequestBody(
	software_type = TeamworkSoftwareType.TeamsClient,
	software_version = "1.0.96.22",
)

await graph_client.teamwork.devices.by_teamwork_device_id('teamworkDevice-id').update_software.post(request_body)


```