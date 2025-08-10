---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_authentication_method import ExternalAuthenticationMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalAuthenticationMethod(
	odata_type = "#microsoft.graph.externalAuthenticationMethod",
	configuration_id = "26310fee-860b-4eab-8749-ab730dcf335e",
	display_name = "Adatum",
)

result = await graph_client.users.by_user_id('user-id').authentication.external_authentication_methods.post(request_body)


```