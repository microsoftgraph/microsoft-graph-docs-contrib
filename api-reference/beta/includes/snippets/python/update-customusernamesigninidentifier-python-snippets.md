---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_username_sign_in_identifier import CustomUsernameSignInIdentifier
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomUsernameSignInIdentifier(
	odata_type = "#microsoft.graph.customUsernameSignInIdentifier",
	name = "CustomUsername1",
	is_enabled = True,
	validation_regex = "^[a-zA-Z]{4}\d{5}$",
)

result = await graph_client.identity.sign_in_identifiers.by_sign_in_identifier_base_name('signInIdentifierBase-name').patch(request_body)


```