---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_user_profile import ExternalUserProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalUserProfile(
	job_title = "Contractor",
)

result = await graph_client.directory.external_user_profiles.by_external_user_profile_id('externalUserProfile-id').patch(request_body)


```