---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TermsAndConditions()
request_body.@odata_type = '#microsoft.graph.termsAndConditions'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.title = 'Title value'

request_body.body_text = 'Body Text value'

request_body.acceptance_statement = 'Acceptance Statement value'

request_body.Version = 7




result = await client.device_management.term_and_conditions.by_term_and_condition_id('termsAndConditions-id').patch(request_body = request_body)


```