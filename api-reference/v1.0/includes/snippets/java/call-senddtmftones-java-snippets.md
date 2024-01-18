---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Tone> tonesList = new LinkedList<Tone>();
tonesList.add(Tone.TONE1);
tonesList.add(Tone.TONE2);
tonesList.add(Tone.TONE3);
tonesList.add(Tone.TONE4);
tonesList.add(Tone.TONE5);
tonesList.add(Tone.TONE6);
tonesList.add(Tone.TONE7);
tonesList.add(Tone.TONE8);
tonesList.add(Tone.TONE9);
tonesList.add(Tone.TONE0);
tonesList.add(Tone.STAR);
tonesList.add(Tone.POUND);

int delayBetweenTonesMs = 1000;

String clientContext = "e0be71f1-a14f-4cec-b65a-e7aba5db7c53";

graphClient.communications().calls("481f3600-983e-4276-9b59-c1b30ec8d125")
	.microsoft.graph.sendDtmfTones(CallMicrosoft.graph.sendDtmfTonesParameterSet
		.newBuilder()
		.withTones(tonesList)
		.withDelayBetweenTonesMs(delayBetweenTonesMs)
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```