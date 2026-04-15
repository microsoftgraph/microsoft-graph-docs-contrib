---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.governance_invitation import GovernanceInvitation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernanceInvitation(
	governing_tenant_id = "aaaabbbb-0000-cccc-1111-dddd2222eeee",
)

result = await graph_client.directory.tenant_governance.governance_invitations.post(request_body)


```