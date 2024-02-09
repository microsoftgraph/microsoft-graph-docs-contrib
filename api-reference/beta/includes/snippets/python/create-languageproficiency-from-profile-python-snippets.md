---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.language_proficiency import LanguageProficiency

graph_client = GraphServiceClient(credentials, scopes)

request_body = LanguageProficiency(
	display_name = "Norwegian Bokmål",
	tag = "nb-NO",
	spoken = LanguageProficiencyLevel.NativeOrBilingual,
	written = LanguageProficiencyLevel.NativeOrBilingual,
	reading = LanguageProficiencyLevel.NativeOrBilingual,
)

result = await graph_client.me.profile.languages.post(request_body)


```