---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Call call = new Call();
call.setOdataType("#microsoft.graph.call");
call.setCallbackUri("https://bot.contoso.com/callback");
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.serviceHostedMediaConfig");
LinkedList<MediaInfo> preFetchMedia = new LinkedList<MediaInfo>();
MediaInfo mediaInfo = new MediaInfo();
mediaInfo.setUri("https://cdn.contoso.com/beep.wav");
mediaInfo.setResourceId("f8971b04-b53e-418c-9222-c82ce681a582");
preFetchMedia.add(mediaInfo);
MediaInfo mediaInfo1 = new MediaInfo();
mediaInfo1.setUri("https://cdn.contoso.com/cool.wav");
mediaInfo1.setResourceId("86dc814b-c172-4428-9112-60f8ecae1edb");
preFetchMedia.add(mediaInfo1);
mediaConfig.setPreFetchMedia(preFetchMedia);
call.setMediaConfig(mediaConfig);
ChatInfo chatInfo = new ChatInfo();
chatInfo.setOdataType("#microsoft.graph.chatInfo");
chatInfo.setThreadId("19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2");
chatInfo.setMessageId("0");
call.setChatInfo(chatInfo);
OrganizerMeetingInfo meetingInfo = new OrganizerMeetingInfo();
meetingInfo.setOdataType("#microsoft.graph.organizerMeetingInfo");
IdentitySet organizer = new IdentitySet();
organizer.setOdataType("#microsoft.graph.identitySet");
Identity user = new Identity();
user.setOdataType("#microsoft.graph.identity");
user.setId("5810cede-f3cc-42eb-b2c1-e9bd5d53ec96");
user.setDisplayName("Bob");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "9f386a15-f9cc-445b-8106-ac85e314a07b");
user.setAdditionalData(additionalData);
organizer.setUser(user);
meetingInfo.setOrganizer(organizer);
meetingInfo.setAllowConversationWithoutHost(true);
call.setMeetingInfo(meetingInfo);
call.setTenantId("86dc81db-c112-4228-9222-63f3esaa1edb");
Call result = graphClient.communications().calls().post(call);


```