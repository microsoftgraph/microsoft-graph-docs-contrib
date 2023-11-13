---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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

result = await graph_client.device_management.notification_message_templates.by_notification_message_template_id('notificationMessageTemplate-id').patch(request_body)


```