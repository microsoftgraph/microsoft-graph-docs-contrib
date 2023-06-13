---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Agreement()
request_body.display_name = 'All Contoso volunteers - Terms of use'

request_body.is_viewing_before_acceptance_required = True




result = await client.identity_governance.term_of_use.agreements.by_agreement_id('agreement-id').patch(request_body = request_body)


```