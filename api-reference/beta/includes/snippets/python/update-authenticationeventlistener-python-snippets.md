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


conditions.applications = conditionsapplications

request_body.conditions = conditions
request_body.Priority = 500




result = await client.identity.authentication_event_listeners.by_authentication_event_listener_id('authenticationEventListener-id').patch(request_body = request_body)


```