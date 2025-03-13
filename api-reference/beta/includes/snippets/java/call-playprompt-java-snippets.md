---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.playprompt.PlayPromptPostRequestBody playPromptPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.playprompt.PlayPromptPostRequestBody();
playPromptPostRequestBody.setClientContext("d45324c1-fcb5-430a-902c-f20af696537c");
LinkedList<Prompt> prompts = new LinkedList<Prompt>();
MediaPrompt prompt = new MediaPrompt();
prompt.setOdataType("#microsoft.graph.mediaPrompt");
MediaInfo mediaInfo = new MediaInfo();
mediaInfo.setOdataType("#microsoft.graph.mediaInfo");
mediaInfo.setUri("https://cdn.contoso.com/beep.wav");
mediaInfo.setResourceId("1D6DE2D4-CD51-4309-8DAA-70768651088E");
prompt.setMediaInfo(mediaInfo);
prompts.add(prompt);
playPromptPostRequestBody.setPrompts(prompts);
playPromptPostRequestBody.setLoop(false);
var result = graphClient.communications().calls().byCallId("{call-id}").playPrompt().post(playPromptPostRequestBody);


```