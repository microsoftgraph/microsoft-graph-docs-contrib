---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call call = new Call();
call.callbackUri = "https://bot.contoso.com/callback";
LinkedList<Modality> requestedModalitiesList = new LinkedList<Modality>();
requestedModalitiesList.add(Modality.AUDIO);
call.requestedModalities = requestedModalitiesList;
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
LinkedList<MediaInfo> preFetchMediaList = new LinkedList<MediaInfo>();
MediaInfo preFetchMedia = new MediaInfo();
preFetchMedia.uri = "https://cdn.contoso.com/beep.wav";
preFetchMedia.resourceId = "f8971b04-b53e-418c-9222-c82ce681a582";
preFetchMediaList.add(preFetchMedia);
MediaInfo preFetchMedia1 = new MediaInfo();
preFetchMedia1.uri = "https://cdn.contoso.com/cool.wav";
preFetchMedia1.resourceId = "86dc814b-c172-4428-9112-60f8ecae1edb";
preFetchMediaList.add(preFetchMedia1);
mediaConfig.preFetchMedia = preFetchMediaList;
call.mediaConfig = mediaConfig;
ChatInfo chatInfo = new ChatInfo();
chatInfo.threadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype";
chatInfo.messageId = "1533758867081";
call.chatInfo = chatInfo;
OrganizerMeetingInfo meetingInfo = new OrganizerMeetingInfo();
IdentitySet organizer = new IdentitySet();
Identity user = new Identity();
user.id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96";
user.tenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a";
user.displayName = "Bob";
organizer.user = user;
meetingInfo.organizer = organizer;
meetingInfo.allowConversationWithoutHost = true;
call.meetingInfo = meetingInfo;

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```