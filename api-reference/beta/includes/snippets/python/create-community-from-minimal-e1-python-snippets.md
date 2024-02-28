---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.community import Community

graph_client = GraphServiceClient(credentials, scopes)

request_body = Community(
	display_name = "Financial Advice for Software Engineers",
	description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
	privacy = CommunityPrivacy.Public,
)

result = await graph_client.employee_experience.communities.post(request_body)


```