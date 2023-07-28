---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardingOptions()
request_body.skipdnslookupstate(Status.Disabled('status.disabled'))




result = await client.network_access.settings.forwarding_options.patch(request_body = request_body)


```