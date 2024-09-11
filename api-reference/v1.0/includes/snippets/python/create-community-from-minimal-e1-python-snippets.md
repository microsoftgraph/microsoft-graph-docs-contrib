---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.community import Community
from msgraph.generated.models.community_privacy import CommunityPrivacy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Community(
	display_name = "Financial Advice for Software Engineers",
	description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
	privacy = CommunityPrivacy.Public,
)

result = await graph_client.employee_experience.communities.post(request_body)


```