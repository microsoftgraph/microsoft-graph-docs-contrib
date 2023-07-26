---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnTokenIssuanceStartListener()
request_body.@odata_type = '#microsoft.graph.onTokenIssuanceStartListener'

conditions = AuthenticationConditions()
conditionsapplications = AuthenticationConditionsApplications()
conditionsapplications.include_all_applications = False

include_applications_authentication_condition_application1 = AuthenticationConditionApplication()
include_applications_authentication_condition_application1.app_id = 'a13d0fc1-04ab-4ede-b215-63de0174cbb4'


includeApplicationsArray []= includeApplicationsAuthenticationConditionApplication1;
conditionsapplications.includeapplications(includeApplicationsArray)



conditions.applications = conditionsapplications

request_body.conditions = conditions
request_body.Priority = 500

handler = OnTokenIssuanceStartCustomExtensionHandler()
handler.@odata_type = '#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler'

handlercustom_extension = OnTokenIssuanceStartCustomExtension()
handlercustom_extension.id = '6fc5012e-7665-43d6-9708-4370863f4e6e'


handler.custom_extension = handlercustom_extension

request_body.handler = handler



result = await client.identity.authentication_event_listeners.post(request_body = request_body)


```