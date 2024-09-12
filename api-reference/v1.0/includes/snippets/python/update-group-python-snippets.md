---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Group(
	description = "Library Assist - ADC",
	display_name = "Library Assist - ADC",
	mail_nickname = "library-help-adc",
)

result = await graph_client.groups.by_group_id('group-id').patch(request_body)


```