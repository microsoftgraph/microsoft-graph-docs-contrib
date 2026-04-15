---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.tenant_governance_setting import TenantGovernanceSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TenantGovernanceSetting(
	can_receive_invitations = True,
)

result = await graph_client.directory.tenant_governance.settings.patch(request_body)


```