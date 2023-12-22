---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Community(
	display_name = "Financial Advice for Software Engineers",
	description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.",
	privacy = CommunityPrivacy.Public,
)

result = await graph_client.employee_experience.communities.post(request_body)


```