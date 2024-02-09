---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.admin_dynamics import AdminDynamics
from msgraph.generated.models.customer_voice_settings import CustomerVoiceSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdminDynamics(
	odata_type = "#microsoft.graph.adminDynamics",
	customer_voice = CustomerVoiceSettings(
		odata_type = "microsoft.graph.customerVoiceSettings",
		is_restricted_survey_access_enabled = False,
		is_record_identity_by_default_enabled = False,
		is_in_org_forms_phishing_scan_enabled = False,
	),
)

result = await graph_client.admin.dynamics.patch(request_body)


```