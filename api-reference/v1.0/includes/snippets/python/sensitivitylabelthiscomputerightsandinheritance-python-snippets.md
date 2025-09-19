---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.datasecurityandgovernance.sensitivitylabels.compute_rights_and_inheritance.compute_rights_and_inheritance_post_request_body import ComputeRightsAndInheritancePostRequestBody
from msgraph.generated.models.protected_content import ProtectedContent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ComputeRightsAndInheritancePostRequestBody(
	delegated_user_email = "String",
	locale = "String",
	protected_contents = [
		ProtectedContent(
			odata_type = "microsoft.graph.protectedContent",
		),
	],
	supported_content_formats = [
		"String",
	],
)

result = await graph_client.security.data_security_and_governance.sensitivity_labels.compute_rights_and_inheritance.post(request_body)


```