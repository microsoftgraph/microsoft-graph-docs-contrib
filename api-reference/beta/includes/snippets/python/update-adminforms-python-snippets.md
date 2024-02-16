---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.admin_forms import AdminForms
from msgraph.generated.models.forms_settings import FormsSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdminForms(
	odata_type = "#microsoft.graph.adminForms",
	settings = FormsSettings(
		odata_type = "microsoft.graph.formsSettings",
		is_external_send_form_enabled = True,
		is_external_share_collaboration_enabled = False,
		is_external_share_result_enabled = False,
		is_external_share_template_enabled = False,
		is_record_identity_by_default_enabled = True,
		is_bing_image_search_enabled = True,
		is_in_org_forms_phishing_scan_enabled = False,
	),
)

result = await graph_client.admin.forms.patch(request_body)


```