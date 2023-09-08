---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = User(
	business_phones = [
		"+1 425 555 0109",
	]
	office_location = "18/2111",
)

result = await graph_client.me.patch(body = request_body)


```