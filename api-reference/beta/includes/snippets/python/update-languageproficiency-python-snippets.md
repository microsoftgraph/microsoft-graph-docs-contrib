---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.language_proficiency import LanguageProficiency
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LanguageProficiency(
	allowed_audiences = AllowedAudiences.Organization,
)

result = await graph_client.me.profile.languages.by_language_proficiency_id('languageProficiency-id').patch(request_body)


```