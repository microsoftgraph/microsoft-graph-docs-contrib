---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdminDynamics()
request_body.@odata_type = '#microsoft.graph.adminDynamics'

customer_voice = CustomerVoiceSettings()
customer_voice.@odata_type = 'microsoft.graph.customerVoiceSettings'

customer_voice.is_restricted_survey_access_enabled = False

customer_voice.is_record_identity_by_default_enabled = False

customer_voice.is_in_org_forms_phishing_scan_enabled = False


request_body.customer_voice = customer_voice



result = await client.admin.dynamics.patch(request_body = request_body)


```