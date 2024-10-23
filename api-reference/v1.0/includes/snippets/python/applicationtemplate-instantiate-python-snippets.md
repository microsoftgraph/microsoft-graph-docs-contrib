---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.applicationtemplates.item.instantiate.instantiate_post_request_body import InstantiatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InstantiatePostRequestBody(
	display_name = "Azure AD SAML Toolkit",
)

result = await graph_client.application_templates.by_application_template_id('applicationTemplate-id').instantiate.post(request_body)


```