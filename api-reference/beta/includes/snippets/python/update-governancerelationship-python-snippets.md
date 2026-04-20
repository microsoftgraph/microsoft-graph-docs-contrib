---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.governance_relationship import GovernanceRelationship
from msgraph_beta.generated.models.relationship_status import RelationshipStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernanceRelationship(
	status = RelationshipStatus.Terminated,
)

result = await graph_client.directory.tenant_governance.governance_relationships.by_governance_relationship_id('governanceRelationship-id').patch(request_body)


```