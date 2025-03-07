---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.applications.item.add_key.add_key_post_request_body import AddKeyPostRequestBody
from msgraph.generated.models.key_credential import KeyCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddKeyPostRequestBody(
	key_credential = KeyCredential(
		type = "AsymmetricX509Cert",
		usage = "Verify",
		key = base64.urlsafe_b64decode("MIIDYDCCAki..."),
	),
	password_credential = None,
	proof = "eyJ0eXAiOiJ...",
)

result = await graph_client.applications.by_application_id('application-id').add_key.post(request_body)


```