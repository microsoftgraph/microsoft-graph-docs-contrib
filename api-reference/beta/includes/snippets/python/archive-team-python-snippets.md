---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ArchivePostRequestBody(
)

await graph_client.teams.by_team_id('team-id').archive.post(request_body)


```