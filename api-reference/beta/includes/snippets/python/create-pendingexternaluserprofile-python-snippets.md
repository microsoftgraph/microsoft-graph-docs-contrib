---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.pending_external_user_profile import PendingExternalUserProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PendingExternalUserProfile(
	phone_number = "+15555555555",
	display_name = "Bob Henry",
)

result = await graph_client.directory.pending_external_user_profiles.post(request_body)


```