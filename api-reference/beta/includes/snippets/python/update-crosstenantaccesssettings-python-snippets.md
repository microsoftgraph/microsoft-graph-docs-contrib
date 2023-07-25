---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CrossTenantAccessSettings()
request_body.@odata_type = '#microsoft.graph.networkaccess.crossTenantAccessSettings'

request_body.networkpackettaggingstatus(Status.Enabled('status.enabled'))




result = await client.network_access.settings.cros_tenant_access.patch(request_body = request_body)


```