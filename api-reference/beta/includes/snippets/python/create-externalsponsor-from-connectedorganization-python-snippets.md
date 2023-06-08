---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceCreate()
request_body.@odata_id = 'https://graph.microsoft.com/beta/users/{id}'




await client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').external_sponsors.ref.post(request_body = request_body)


```