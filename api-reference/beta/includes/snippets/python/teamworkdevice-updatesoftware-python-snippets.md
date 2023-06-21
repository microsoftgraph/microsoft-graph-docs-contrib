---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateSoftwarePostRequestBody()
request_body.softwaretype(TeamworkSoftwareType.TeamsClient('teamworksoftwaretype.teamsclient'))

request_body.software_version = '1.0.96.22'




await client.teamwork.devices.by_device_id('teamworkDevice-id').update_software.post(request_body = request_body)


```