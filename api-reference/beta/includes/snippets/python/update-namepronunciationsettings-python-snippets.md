---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.name_pronunciation_settings import NamePronunciationSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = NamePronunciationSettings(
	odata_type = "#microsoft.graph.namePronunciationSettings",
	is_enabled_in_organization = True,
)

result = await graph_client.admin.people.name_pronunciation.patch(request_body)


```