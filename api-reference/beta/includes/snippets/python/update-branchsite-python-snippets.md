---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BranchSite()
request_body.name = 'My updated branch'




result = await client.network_access.connectivity.branches.by_branche_id('branchSite-id').patch(request_body = request_body)


```