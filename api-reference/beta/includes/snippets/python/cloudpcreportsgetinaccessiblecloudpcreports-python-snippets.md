---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetInaccessibleCloudPcReportsPostRequestBody()
request_body.filter = 'region eq \'westus2\''

request_body.OrderBy(['cloudPcId', ])

request_body.Select(['cloudPcId', 'aadDeviceId', 'cloudPcName', 'userPrincipalName', 'provisioningStatus', 'region', 'deviceHealthStatus', 'deviceHealthStatusDateTime', 'recentDeviceHealthFailureCount', 'recentConnectionFailureCount', 'systemStatus', 'systemStatusDateTime', ])

request_body.Top = 10

request_body.Skip = 0




await client.device_management.virtual_endpoint.reports.get_inaccessible_cloud_pc_reports.post(request_body = request_body)


```