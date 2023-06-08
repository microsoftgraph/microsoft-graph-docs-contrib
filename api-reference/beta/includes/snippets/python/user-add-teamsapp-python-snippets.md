---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserScopeTeamsAppInstallation()
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').teamwork.installed_apps.post(request_body = request_body)


```