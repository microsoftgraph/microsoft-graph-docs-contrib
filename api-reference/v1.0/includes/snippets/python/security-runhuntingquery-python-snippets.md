---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = RunHuntingQueryPostRequestBody(
	query = "DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2",
)

result = await graph_client.security.microsoft_graph_security_run_hunting_query.post(request_body)


```