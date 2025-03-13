---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.authentication_behaviors import AuthenticationBehaviors
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	authentication_behaviors = AuthenticationBehaviors(
		remove_unverified_email_claim = None,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```