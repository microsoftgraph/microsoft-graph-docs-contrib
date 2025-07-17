---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.on_premises_publishing import OnPremisesPublishing
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	on_premises_publishing = OnPremisesPublishing(
		application_type = "nonwebapp",
		is_accessible_via_z_t_n_a_client = True,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```