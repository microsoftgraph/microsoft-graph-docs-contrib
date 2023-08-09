---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConditionalAccessSettings()
request_body.signalingstatus(Status.Disabled('status.disabled'))

additional_data = [
'@odata_context' => 'https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess', 
];
request_body.additional_data(additional_data)





result = await client.network_access.settings.conditional_access.patch(request_body = request_body)


```