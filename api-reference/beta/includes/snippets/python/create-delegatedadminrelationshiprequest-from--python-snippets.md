---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedAdminRelationshipRequest()
request_body.action(DelegatedAdminRelationshipRequestAction.LockForApproval('delegatedadminrelationshiprequestaction.lockforapproval'))




result = await client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').requests.post(request_body = request_body)


```