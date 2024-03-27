---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.program_control import ProgramControl

graph_client = GraphServiceClient(credentials, scopes)

request_body = ProgramControl(
	control_id = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
	control_type_id = "6e4f3d20-c5c3-407f-9695-8460952bcc68",
	program_id = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
)

result = await graph_client.program_controls.post(request_body)


```