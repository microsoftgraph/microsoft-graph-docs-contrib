---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.events.item.tentativelyaccept.TentativelyAcceptPostRequestBody tentativelyAcceptPostRequestBody = new com.microsoft.graph.beta.users.item.events.item.tentativelyaccept.TentativelyAcceptPostRequestBody();
tentativelyAcceptPostRequestBody.setComment("I may not be able to make this week. How about next week?");
tentativelyAcceptPostRequestBody.setSendResponse(true);
TimeSlot proposedNewTime = new TimeSlot();
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2019-12-02T18:00:00");
start.setTimeZone("Pacific Standard Time");
proposedNewTime.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2019-12-02T19:00:00");
end.setTimeZone("Pacific Standard Time");
proposedNewTime.setEnd(end);
tentativelyAcceptPostRequestBody.setProposedNewTime(proposedNewTime);
graphClient.me().events().byEventId("{event-id}").tentativelyAccept().post(tentativelyAcceptPostRequestBody);


```