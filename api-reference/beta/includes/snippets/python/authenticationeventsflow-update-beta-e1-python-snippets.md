---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalUsersSelfServiceSignUpEventsFlow()
request_body.@odata_type = '#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow'

request_body.display_name = 'New user flow description'

request_body.Priority = 200




result = await client.identity.authentication_event_flows.by_authentication_event_flow_id('authenticationEventsFlow-id').patch(request_body = request_body)


```