---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeCard timeCard = new TimeCard();
TimeCardEvent clockInEvent = new TimeCardEvent();
OffsetDateTime dateTime = OffsetDateTime.parse("2019-03-18T00:00:00.000Z");
clockInEvent.setDateTime(dateTime);
clockInEvent.setAtApprovedLocation(true);
ItemBody notes = new ItemBody();
notes.setContent("Started late due to traffic in CA 237");
notes.setContentType(BodyType.Text);
clockInEvent.setNotes(notes);
timeCard.setClockInEvent(clockInEvent);
ItemBody notes1 = new ItemBody();
notes1.setContent("8 To 5 Inventory management");
notes1.setContentType(BodyType.Text);
timeCard.setNotes(notes1);
LinkedList<TimeCardBreak> breaks = new LinkedList<TimeCardBreak>();
TimeCardBreak timeCardBreak = new TimeCardBreak();
timeCardBreak.setBreakId("string");
ItemBody notes2 = new ItemBody();
notes2.setContent("Lunch break");
notes2.setContentType(BodyType.Text);
timeCardBreak.setNotes(notes2);
TimeCardEvent start = new TimeCardEvent();
OffsetDateTime dateTime1 = OffsetDateTime.parse("2019-03-18T02:00:00.000Z");
start.setDateTime(dateTime1);
start.setAtApprovedLocation(true);
ItemBody notes3 = new ItemBody();
notes3.setContent("Reduced break to make up for lost time");
notes3.setContentType(BodyType.Text);
start.setNotes(notes3);
timeCardBreak.setStart(start);
breaks.add(timeCardBreak);
timeCard.setBreaks(breaks);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("onBehalfOfUserId", "a3601044-a1b5-438e-b742-f78d01d68a67");
timeCard.setAdditionalData(additionalData);
TimeCard result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().post(timeCard);


```