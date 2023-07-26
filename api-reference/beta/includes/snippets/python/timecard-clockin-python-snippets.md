---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ClockInPostRequestBody()
notes = ItemBody()
notes.contenttype(BodyType.Text('bodytype.text'))

notes.content = 'clock in notes'


request_body.notes = notes
additional_data = [
'at_aproved_location' => true,
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').schedule.time_cards.clock_in.post(request_body = request_body)


```