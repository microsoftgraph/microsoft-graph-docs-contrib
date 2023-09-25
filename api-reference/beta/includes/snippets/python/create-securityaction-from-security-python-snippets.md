---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SecurityAction(
	name = "BlockIp",
	action_reason = "Test",
	parameters = [
		KeyValuePair(
			name = "IP",
			value = "1.2.3.4",
		),
	]
	vendor_information = SecurityVendorInformation(
		provider = "Windows Defender ATP",
		vendor = "Microsoft",
	),
)

result = await graph_client.security.security_actions.post(body = request_body)


```