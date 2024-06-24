---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.communications.calls.item.answer.AnswerPostRequestBody answerPostRequestBody = new com.microsoft.graph.communications.calls.item.answer.AnswerPostRequestBody();
answerPostRequestBody.setCallbackUri("https://bot.contoso.com/api/calls");
LinkedList<Modality> acceptedModalities = new LinkedList<Modality>();
acceptedModalities.add(Modality.Audio);
answerPostRequestBody.setAcceptedModalities(acceptedModalities);
ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.serviceHostedMediaConfig");
LinkedList<MediaInfo> preFetchMedia = new LinkedList<MediaInfo>();
MediaInfo mediaInfo = new MediaInfo();
mediaInfo.setUri("https://cdn.contoso.com/beep.wav");
mediaInfo.setResourceId("1D6DE2D4-CD51-4309-8DAA-70768651088E");
preFetchMedia.add(mediaInfo);
MediaInfo mediaInfo1 = new MediaInfo();
mediaInfo1.setUri("https://cdn.contoso.com/cool.wav");
mediaInfo1.setResourceId("1D6DE2D4-CD51-4309-8DAA-70768651088F");
preFetchMedia.add(mediaInfo1);
mediaConfig.setPreFetchMedia(preFetchMedia);
answerPostRequestBody.setMediaConfig(mediaConfig);
graphClient.communications().calls().byCallId("{call-id}").answer().post(answerPostRequestBody);


```