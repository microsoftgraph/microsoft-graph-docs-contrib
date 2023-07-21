---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdminForms()
request_body.@odata_type = '#microsoft.graph.adminForms'

settings = FormsSettings()
settings.@odata_type = 'microsoft.graph.formsSettings'

settings.is_external_send_form_enabled = True

settings.is_external_share_collaboration_enabled = False

settings.is_external_share_result_enabled = False

settings.is_external_share_template_enabled = False

settings.is_record_identity_by_default_enabled = True

settings.is_bing_image_search_enabled = True

settings.is_in_org_forms_phishing_scan_enabled = False


request_body.settings = settings



result = await client.admin.forms.patch(request_body = request_body)


```