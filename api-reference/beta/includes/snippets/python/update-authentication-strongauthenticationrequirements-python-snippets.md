---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.strong_authentication_requirements import StrongAuthenticationRequirements
from msgraph_beta.generated.models.per_user_mfa_state import PerUserMfaState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = StrongAuthenticationRequirements(
	per_user_mfa_state = PerUserMfaState.Disabled,
)

result = await graph_client.users.by_user_id('user-id').authentication.requirements.patch(request_body)


```