---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConnectedOrganization()
request_body.display_name = 'Connected organization new name'

request_body.description = 'Connected organization new description'

request_body.state(ConnectedOrganizationState.Configured('connectedorganizationstate.configured'))




result = await client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').patch(request_body = request_body)


```