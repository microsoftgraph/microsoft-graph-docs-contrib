---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annual_event import PersonAnnualEvent
from msgraph_beta.generated.models.person_annual_event_type import PersonAnnualEventType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonAnnualEvent(
	type = PersonAnnualEventType.Birthday,
	date = "1980-01-08",
)

result = await graph_client.me.profile.anniversaries.post(request_body)


```