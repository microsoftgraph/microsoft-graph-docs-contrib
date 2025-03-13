---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_dynamics import AdminDynamics
from msgraph_beta.generated.models.customer_voice_settings import CustomerVoiceSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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