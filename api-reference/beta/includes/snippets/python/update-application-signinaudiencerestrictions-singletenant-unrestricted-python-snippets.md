---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.unrestricted_audience import UnrestrictedAudience
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	sign_in_audience = "AzureADMyOrg",
	sign_in_audience_restrictions = UnrestrictedAudience(
		odata_type = "#microsoft.graph.unrestrictedAudience",
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```