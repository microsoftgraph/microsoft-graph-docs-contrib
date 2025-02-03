---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_forms import AdminForms
from msgraph_beta.generated.models.forms_settings import FormsSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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