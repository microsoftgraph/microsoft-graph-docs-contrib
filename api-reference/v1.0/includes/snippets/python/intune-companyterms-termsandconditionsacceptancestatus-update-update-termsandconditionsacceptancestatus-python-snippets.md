---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TermsAndConditionsAcceptanceStatus()
request_body.@odata_type = '#microsoft.graph.termsAndConditionsAcceptanceStatus'

request_body.user_display_name = 'User Display Name value'

request_body.AcceptedVersion = 15

request_body.acceptedDateTime = DateTime('2016-12-31T23:57:43.6165506-08:00')

request_body.user_principal_name = 'User Principal Name value'




result = await client.device_management.term_and_conditions.by_term_and_condition_id('termsAndConditions-id').acceptance_statuses.by_acceptance_statuse_id('termsAndConditionsAcceptanceStatus-id').patch(request_body = request_body)


```