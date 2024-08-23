---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Call call = new Call();
call.setOdataType("#microsoft.graph.call");
call.setDirection(CallDirection.Outgoing);
call.setCallbackUri("https://bot.contoso.com/callback");
LinkedList<Modality> requestedModalities = new LinkedList<Modality>();
requestedModalities.add(Modality.Audio);
call.setRequestedModalities(requestedModalities);
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.appHostedMediaConfig");
mediaConfig.setBlob("<Media Session Configuration>");
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
additionalData.put("tenantId", "aa67bd4c-8475-432d-bd41-39f255720e0a");
user.setAdditionalData(additionalData);
organizer.setUser(user);
meetingInfo.setOrganizer(organizer);
meetingInfo.setAllowConversationWithoutHost(true);
call.setMeetingInfo(meetingInfo);
call.setTenantId("aa67bd4c-8475-432d-bd41-39f255720e0a");
Call result = graphClient.communications().calls().post(call);


```