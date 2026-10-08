---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.activity_based_timeout_policy import ActivityBasedTimeoutPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivityBasedTimeoutPolicy(
	definition = [
		"{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"00:05:00\"}]}}",
	],
	display_name = "activityBasedTimeoutPolicies test",
	is_organization_default = True,
)

result = await graph_client.policies.activity_based_timeout_policies.post(request_body)


```