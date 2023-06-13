---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrandingDeleteRequestBody()
additional_data = [
'id' => '0', 
];
request_body.additional_data(additional_data)





await client.organization.by_organization_id('organization-id').branding.delete(request_body = request_body)


```