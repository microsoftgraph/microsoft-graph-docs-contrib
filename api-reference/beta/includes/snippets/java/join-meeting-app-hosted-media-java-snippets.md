---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call call = new Call();
call.direction = CallDirection.OUTGOING;
call.callbackUri = "https://bot.contoso.com/callback";
LinkedList<Modality> requestedModalitiesList = new LinkedList<Modality>();
requestedModalitiesList.add(Modality.AUDIO);
call.requestedModalities = requestedModalitiesList;
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration>";
call.mediaConfig = mediaConfig;
ChatInfo chatInfo = new ChatInfo();
chatInfo.threadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2";
chatInfo.messageId = "0";
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
call.tenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a";

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```