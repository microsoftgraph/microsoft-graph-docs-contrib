---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MeetingRegistration meetingRegistration = new MeetingRegistration();
meetingRegistration.setSubject("Microsoft Ignite: Day 1");
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-11-02T08:00:00-08:00");
meetingRegistration.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-11-02T15:45:00-08:00");
meetingRegistration.setEndDateTime(endDateTime);
LinkedList<MeetingSpeaker> speakers = new LinkedList<MeetingSpeaker>();
MeetingSpeaker meetingSpeaker = new MeetingSpeaker();
meetingSpeaker.setDisplayName("Henry Ross");
meetingSpeaker.setBio("Chairman and Chief Executive Officer");
speakers.add(meetingSpeaker);
MeetingSpeaker meetingSpeaker1 = new MeetingSpeaker();
meetingSpeaker1.setDisplayName("Fred Ryan");
meetingSpeaker1.setBio("CVP");
speakers.add(meetingSpeaker1);
meetingRegistration.setSpeakers(speakers);
MeetingRegistration result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().patch(meetingRegistration);


```