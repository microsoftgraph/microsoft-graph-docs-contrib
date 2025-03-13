---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.delegated_admin_relationship_request import DelegatedAdminRelationshipRequest
from msgraph_beta.generated.models.delegated_admin_relationship_request_action import DelegatedAdminRelationshipRequestAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DelegatedAdminRelationshipRequest(
	action = DelegatedAdminRelationshipRequestAction.LockForApproval,
)

result = await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').requests.post(request_body)


```