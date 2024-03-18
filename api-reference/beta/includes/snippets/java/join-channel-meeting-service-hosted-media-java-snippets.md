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
chatInfo.setThreadId("19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype");
chatInfo.setMessageId("1533758867081");
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
additionalData.put("tenantId", "aa67bd4c-8475-432d-bd41-39f255720e0a");
user.setAdditionalData(additionalData);
organizer.setUser(user);
meetingInfo.setOrganizer(organizer);
meetingInfo.setAllowConversationWithoutHost(true);
call.setMeetingInfo(meetingInfo);
Call result = graphClient.communications().calls().post(call);


```