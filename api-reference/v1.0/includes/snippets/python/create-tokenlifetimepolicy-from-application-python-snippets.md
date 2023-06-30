---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceCreate()
request_body.@odata_id = 'https://graph.microsoft.com/v1.0/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4'




await client.applications.by_application_id('application-id').token_lifetime_policies.ref.post(request_body = request_body)


```