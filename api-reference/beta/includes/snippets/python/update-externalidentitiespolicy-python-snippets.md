---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_identities_policy import ExternalIdentitiesPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalIdentitiesPolicy(
	allow_external_identities_to_leave = False,
)

result = await graph_client.policies.external_identities_policy.patch(request_body)


```