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
chatInfo.threadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2";
chatInfo.messageId = "0";
call.chatInfo = chatInfo;
OrganizerMeetingInfo meetingInfo = new OrganizerMeetingInfo();
IdentitySet organizer = new IdentitySet();
Identity user = new Identity();
user.id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96";
user.tenantId = "9f386a15-f9cc-445b-8106-ac85e314a07b";
user.displayName = "Bob";
organizer.user = user;
meetingInfo.organizer = organizer;
meetingInfo.allowConversationWithoutHost = true;
call.meetingInfo = meetingInfo;
call.tenantId = "86dc81db-c112-4228-9222-63f3esaa1edb";

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```