---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TimeCard()
clock_in_event = TimeCardEvent()
clock_in_event.dateTime = DateTime('2019-03-18T00:00:00.000Z')

clock_in_event.at_approved_location = True

clock_in_eventnotes = ItemBody()
clock_in_eventnotes.content = 'Started late due to traffic in CA 237'

clock_in_eventnotes.contenttype(BodyType.Text('bodytype.text'))


clock_in_event.notes = clock_in_eventnotes

request_body.clock_in_event = clock_in_event
notes = ItemBody()
notes.content = '8 To 5 Inventory management'

notes.contenttype(BodyType.Text('bodytype.text'))


request_body.notes = notes
breaks_time_card_break1 = TimeCardBreak()
breaks_time_card_break1.break_id = 'string'

breaks_time_card_break1notes = ItemBody()
breaks_time_card_break1notes.content = 'Lunch break'

breaks_time_card_break1notes.contenttype(BodyType.Text('bodytype.text'))


breaks_time_card_break1.notes = breaks_time_card_break1notes
breaks_time_card_break1start = TimeCardEvent()
breaks_time_card_break1start.dateTime = DateTime('2019-03-18T02:00:00.000Z')

breaks_time_card_break1start.at_approved_location = True

breaks_time_card_break1startnotes = ItemBody()
breaks_time_card_break1startnotes.content = 'Reduced break to make up for lost time'

breaks_time_card_break1startnotes.contenttype(BodyType.Text('bodytype.text'))


breaks_time_card_break1start.notes = breaks_time_card_break1startnotes

breaks_time_card_break1.start = breaks_time_card_break1start

breaksArray []= breaksTimeCardBreak1;
request_body.breaks(breaksArray)


additional_data = [
'on_behalf_of_user_id' => 'a3601044-a1b5-438e-b742-f78d01d68a67', 
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').schedule.time_cards.post(request_body = request_body)


```