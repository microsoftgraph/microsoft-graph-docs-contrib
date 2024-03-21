---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.notification_message_template import NotificationMessageTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = NotificationMessageTemplate(
	odata_type = "#microsoft.graph.notificationMessageTemplate",
	display_name = "Display Name value",
	default_locale = "Default Locale value",
	branding_options = NotificationTemplateBrandingOptions.IncludeCompanyLogo,
	role_scope_tag_ids = [
		"Role Scope Tag Ids value",
	],
)

result = await graph_client.device_management.notification_message_templates.post(request_body)


```