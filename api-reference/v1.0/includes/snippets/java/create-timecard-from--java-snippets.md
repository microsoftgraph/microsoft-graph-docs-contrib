---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TimeCard timeCard = new TimeCard();
timeCard.setUserId("d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2");
TimeCardEvent clockInEvent = new TimeCardEvent();
OffsetDateTime dateTime = OffsetDateTime.parse("2025-01-07T21:00:00.000Z");
clockInEvent.setDateTime(dateTime);
clockInEvent.setIsAtApprovedLocation(true);
ItemBody notes = new ItemBody();
notes.setContent("Started late due to traffic in CA 237");
notes.setContentType(BodyType.Text);
clockInEvent.setNotes(notes);
timeCard.setClockInEvent(clockInEvent);
TimeCardEvent clockOutEvent = new TimeCardEvent();
OffsetDateTime dateTime1 = OffsetDateTime.parse("2025-01-07T21:30:00.000Z");
clockOutEvent.setDateTime(dateTime1);
clockOutEvent.setIsAtApprovedLocation(true);
timeCard.setClockOutEvent(clockOutEvent);
TimeCard result = graphClient.teams().byTeamId("{team-id}").schedule().timeCards().post(timeCard);


```