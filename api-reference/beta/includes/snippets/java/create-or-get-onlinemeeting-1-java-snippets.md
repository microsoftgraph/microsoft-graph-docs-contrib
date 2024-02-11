---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.onlinemeetings.createorget.CreateOrGetPostRequestBody createOrGetPostRequestBody = new com.microsoft.graph.beta.users.item.onlinemeetings.createorget.CreateOrGetPostRequestBody();
OffsetDateTime startDateTime = OffsetDateTime.parse("2020-02-06T01:49:21.3524945+00:00");
createOrGetPostRequestBody.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2020-02-06T02:19:21.3524945+00:00");
createOrGetPostRequestBody.setEndDateTime(endDateTime);
createOrGetPostRequestBody.setSubject("Create a meeting with customId provided");
createOrGetPostRequestBody.setExternalId("7eb8263f-d0e0-4149-bb1c-1f0476083c56");
MeetingParticipants participants = new MeetingParticipants();
LinkedList<MeetingParticipantInfo> attendees = new LinkedList<MeetingParticipantInfo>();
MeetingParticipantInfo meetingParticipantInfo = new MeetingParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.setId("1f35f2e6-9cab-44ad-8d5a-b74c14720000");
identity.setUser(user);
meetingParticipantInfo.setIdentity(identity);
meetingParticipantInfo.setRole(OnlineMeetingRole.Presenter);
meetingParticipantInfo.setUpn("test1@contoso.com");
attendees.add(meetingParticipantInfo);
participants.setAttendees(attendees);
createOrGetPostRequestBody.setParticipants(participants);
var result = graphClient.me().onlineMeetings().createOrGet().post(createOrGetPostRequestBody);


```