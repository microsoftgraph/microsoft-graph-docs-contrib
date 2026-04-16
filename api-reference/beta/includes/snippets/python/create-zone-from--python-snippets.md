---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.zone import Zone
from msgraph_beta.generated.models.security.environment import Environment
from msgraph_beta.generated.models.environment_kind import EnvironmentKind
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Zone(
	display_name = "Production Zone",
	description = "Zone for production environments",
	environments = [
		Environment(
			kind = EnvironmentKind.AwsAccount,
			id = "181994123251",
		),
		Environment(
			kind = EnvironmentKind.AwsAccount,
			id = "326438728454",
		),
		Environment(
			kind = EnvironmentKind.AzureSubscription,
			id = "/subscriptions/02687862-a843-4846-81f0-efe9ef244daa",
		),
		Environment(
			kind = EnvironmentKind.GcpProject,
			id = "69483221284",
		),
	],
)

result = await graph_client.security.zones.post(request_body)


```