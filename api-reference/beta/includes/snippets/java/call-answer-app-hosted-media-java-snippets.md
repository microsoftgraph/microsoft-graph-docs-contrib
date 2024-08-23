---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.answer.AnswerPostRequestBody answerPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.answer.AnswerPostRequestBody();
answerPostRequestBody.setCallbackUri("https://bot.contoso.com/api/calls");
LinkedList<Modality> acceptedModalities = new LinkedList<Modality>();
acceptedModalities.add(Modality.Audio);
answerPostRequestBody.setAcceptedModalities(acceptedModalities);
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.setOdataType("#microsoft.graph.appHostedMediaConfig");
mediaConfig.setBlob("<Media Session Configuration Blob>");
answerPostRequestBody.setMediaConfig(mediaConfig);
graphClient.communications().calls().byCallId("{call-id}").answer().post(answerPostRequestBody);


```