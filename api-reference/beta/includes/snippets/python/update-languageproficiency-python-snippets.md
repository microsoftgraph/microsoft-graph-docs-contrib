---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.language_proficiency import LanguageProficiency

graph_client = GraphServiceClient(credentials, scopes)

request_body = LanguageProficiency(
	allowed_audiences = AllowedAudiences.Organization,
)

result = await graph_client.me.profile.languages.by_language_proficiency_id('languageProficiency-id').patch(request_body)


```