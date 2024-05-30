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
JoinMeetingIdMeetingInfo meetingInfo = new JoinMeetingIdMeetingInfo();
meetingInfo.setOdataType("#microsoft.graph.joinMeetingIdMeetingInfo");
meetingInfo.setJoinMeetingId("1234567");
meetingInfo.setPasscode("psw123");
call.setMeetingInfo(meetingInfo);
call.setTenantId("86dc81db-c112-4228-9222-63f3esaa1edb");
Call result = graphClient.communications().calls().post(call);


```