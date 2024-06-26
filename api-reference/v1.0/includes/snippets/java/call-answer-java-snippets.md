---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.answer.AnswerPostRequestBody answerPostRequestBody = new com.microsoft.graph.communications.calls.item.answer.AnswerPostRequestBody();
answerPostRequestBody.setCallbackUri("callbackUri-value");
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.appHostedMediaConfig");
mediaConfig.setBlob("<Media Session Configuration Blob>");
answerPostRequestBody.setMediaConfig(mediaConfig);
LinkedList<Modality> acceptedModalities = new LinkedList<Modality>();
acceptedModalities.add(Modality.Audio);
answerPostRequestBody.setAcceptedModalities(acceptedModalities);
IncomingCallOptions callOptions = new IncomingCallOptions();
callOptions.setOdataType("#microsoft.graph.incomingCallOptions");
callOptions.setIsContentSharingNotificationEnabled(true);
answerPostRequestBody.setCallOptions(callOptions);
answerPostRequestBody.setParticipantCapacity(200);
graphClient.communications().calls().byCallId("{call-id}").answer().post(answerPostRequestBody);


```