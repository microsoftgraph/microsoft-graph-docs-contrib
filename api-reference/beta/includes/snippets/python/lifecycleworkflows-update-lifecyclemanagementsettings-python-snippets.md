---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.lifecycle_management_settings import LifecycleManagementSettings
from msgraph.generated.models.email_settings import EmailSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = LifecycleManagementSettings(
	workflow_schedule_interval_in_hours = 3,
	email_settings = EmailSettings(
		sender_domain = "ContosoIndustries.net",
		use_company_branding = True,
	),
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity",
	}
)

result = await graph_client.identity_governance.lifecycle_workflows.settings.patch(request_body)


```