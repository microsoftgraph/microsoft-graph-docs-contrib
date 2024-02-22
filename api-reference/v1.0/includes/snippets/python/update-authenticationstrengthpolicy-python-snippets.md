---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_strength_policy import AuthenticationStrengthPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationStrengthPolicy(
	odata_type = "#microsoft.graph.authenticationStrengthPolicy",
	display_name = "FIDO2 only",
	description = "An auth strength allowing only FIDO2 security keys.",
)

result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').patch(request_body)


```