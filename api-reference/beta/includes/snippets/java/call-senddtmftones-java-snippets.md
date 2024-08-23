---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.senddtmftones.SendDtmfTonesPostRequestBody sendDtmfTonesPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.senddtmftones.SendDtmfTonesPostRequestBody();
LinkedList<Tone> tones = new LinkedList<Tone>();
tones.add(Tone.Tone1);
tones.add(Tone.Tone2);
tones.add(Tone.Tone3);
tones.add(Tone.Tone4);
tones.add(Tone.Tone5);
tones.add(Tone.Tone6);
tones.add(Tone.Tone7);
tones.add(Tone.Tone8);
tones.add(Tone.Tone9);
tones.add(Tone.Tone0);
tones.add(Tone.Star);
tones.add(Tone.Pound);
sendDtmfTonesPostRequestBody.setTones(tones);
sendDtmfTonesPostRequestBody.setDelayBetweenTonesMs(1000);
sendDtmfTonesPostRequestBody.setClientContext("e0be71f1-a14f-4cec-b65a-e7aba5db7c53");
var result = graphClient.communications().calls().byCallId("{call-id}").sendDtmfTones().post(sendDtmfTonesPostRequestBody);


```