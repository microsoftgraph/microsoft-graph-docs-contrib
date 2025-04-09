---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_governance.lifecycle_management_settings import LifecycleManagementSettings
from msgraph.generated.models.email_settings import EmailSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LifecycleManagementSettings(
	workflow_schedule_interval_in_hours = 3,
	email_settings = EmailSettings(
		sender_domain = "ContosoIndustries.net",
		use_company_branding = True,
	),
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity",
	}
)

result = await graph_client.identity_governance.lifecycle_workflows.settings.patch(request_body)


```