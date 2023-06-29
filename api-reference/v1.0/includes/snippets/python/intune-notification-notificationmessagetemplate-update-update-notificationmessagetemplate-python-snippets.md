---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = NotificationMessageTemplate()
request_body.@odata_type = '#microsoft.graph.notificationMessageTemplate'

request_body.display_name = 'Display Name value'

request_body.default_locale = 'Default Locale value'

request_body.brandingoptions(NotificationTemplateBrandingOptions.IncludeCompanyLogo('notificationtemplatebrandingoptions.includecompanylogo'))

request_body.RoleScopeTagIds(['Role Scope Tag Ids value', ])




result = await client.device_management.notification_message_templates.by_notification_message_template_id('notificationMessageTemplate-id').patch(request_body = request_body)


```