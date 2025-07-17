---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.language_proficiency import LanguageProficiency
from msgraph_beta.generated.models.language_proficiency_level import LanguageProficiencyLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LanguageProficiency(
	display_name = "Norwegian Bokmål",
	tag = "nb-NO",
	spoken = LanguageProficiencyLevel.NativeOrBilingual,
	written = LanguageProficiencyLevel.NativeOrBilingual,
	reading = LanguageProficiencyLevel.NativeOrBilingual,
)

result = await graph_client.me.profile.languages.post(request_body)


```