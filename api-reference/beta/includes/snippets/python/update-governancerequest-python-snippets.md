---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.governance_request import GovernanceRequest
from msgraph_beta.generated.models.request_status import RequestStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernanceRequest(
	status = RequestStatus.Accepted,
)

result = await graph_client.directory.tenant_governance.governance_requests.by_governance_request_id('governanceRequest-id').patch(request_body)


```