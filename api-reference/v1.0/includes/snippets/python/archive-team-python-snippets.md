---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ArchivePostRequestBody(
)

await graph_client.teams.by_team_id('team-id').archive.post(request_body)


```