---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annual_event import PersonAnnualEvent
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonAnnualEvent(
	allowed_audiences = AllowedAudiences.Contacts,
)

result = await graph_client.me.profile.anniversaries.by_person_annual_event_id('personAnnualEvent-id').patch(request_body)


```