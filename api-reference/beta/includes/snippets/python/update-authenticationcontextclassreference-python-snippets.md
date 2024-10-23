---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authentication_context_class_reference import AuthenticationContextClassReference
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationContextClassReference(
	id = "c1",
	display_name = "Contoso medium",
	description = "Medium protection level defined for Contoso policy",
	is_available = True,
)

result = await graph_client.identity.conditional_access.authentication_context_class_references.by_authentication_context_class_reference_id('authenticationContextClassReference-id').patch(request_body)


```