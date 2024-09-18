---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.language_proficiency import LanguageProficiency
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences

graph_client = GraphServiceClient(credentials, scopes)

request_body = LanguageProficiency(
	allowed_audiences = AllowedAudiences.Organization,
)

result = await graph_client.me.profile.languages.by_language_proficiency_id('languageProficiency-id').patch(request_body)


```