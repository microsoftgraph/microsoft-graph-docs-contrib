---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identityprotection.riskyserviceprincipals.dismiss.dismiss_post_request_body import DismissPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DismissPostRequestBody(
	service_principal_ids = [
		"9089a539-a539-9089-39a5-899039a58990",
	],
)

await graph_client.identity_protection.risky_service_principals.dismiss.post(request_body)


```