---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_security_defaults_enforcement_policy import IdentitySecurityDefaultsEnforcementPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentitySecurityDefaultsEnforcementPolicy(
	is_enabled = False,
)

result = await graph_client.policies.identity_security_defaults_enforcement_policy.patch(request_body)


```