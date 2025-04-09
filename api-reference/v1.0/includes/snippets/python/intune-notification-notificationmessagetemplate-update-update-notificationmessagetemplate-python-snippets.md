---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.notification_message_template import NotificationMessageTemplate
from msgraph.generated.models.notification_template_branding_options import NotificationTemplateBrandingOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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