---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DayNote dayNote = new DayNote();
dayNote.dayNoteDate = new DateOnly(1900,1,1);
ItemBody sharedDayNote = new ItemBody();
sharedDayNote.contentType = BodyType.TEXT;
sharedDayNote.content = "updated note 08";
dayNote.sharedDayNote = sharedDayNote;

graphClient.teams("{teamsId}").schedule().dayNotes("{dayNoteId}")
	.buildRequest()
	.put(dayNote);

```