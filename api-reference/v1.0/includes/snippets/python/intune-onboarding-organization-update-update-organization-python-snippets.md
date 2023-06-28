---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Organization()
request_body.@odata_type = '#microsoft.graph.organization'

request_body.mobiledevicemanagementauthority(MdmAuthority.Intune('mdmauthority.intune'))




result = await client.organization.by_organization_id('organization-id').patch(request_body = request_body)


```