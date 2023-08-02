---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SwapShiftsChangeRequest()
request_body.sender_shift_id = '5ad10161-6524-4c7c-9beb-4e8677ba2f6d'

request_body.sender_message = 'I can\'t make my shift, any chance we can swap?'

request_body.recipient_user_id = '567c8ea5-9e32-422a-a663-8270201699cd'

request_body.recipient_shift_id = 'e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c'



request_configuration = SwapShiftsChangeRequestsRequestBuilder.SwapShiftsChangeRequestsRequestBuilderPostRequestConfiguration(
headers = {
		'Authorization' : "Bearer {token}",
}

)


result = await client.teams.by_team_id('team-id').schedule.swap_shift_change_requests.post(request_body = request_body, request_configuration = request_configuration)


```