---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RemoveHoldPostRequestBody()
request_body.Ids(['7f697316-43ed-48e1-977f-261be050db93', 'b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8', ])




await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.microsoft_graph_security_remove_hold.post(request_body = request_body)


```