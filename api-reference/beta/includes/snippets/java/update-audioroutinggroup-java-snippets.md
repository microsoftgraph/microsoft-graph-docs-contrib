---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AudioRoutingGroup audioRoutingGroup = new AudioRoutingGroup();
audioRoutingGroup.setId("oneToOne");
audioRoutingGroup.setRoutingMode(RoutingMode.OneToOne);
LinkedList<String> sources = new LinkedList<String>();
sources.add("632899f8-2ea1-4604-8413-27bd2892079f");
audioRoutingGroup.setSources(sources);
LinkedList<String> receivers = new LinkedList<String>();
receivers.add("550fae72-d251-43ec-868c-373732c2704f");
receivers.add("72f988bf-86f1-41af-91ab-2d7cd011db47");
audioRoutingGroup.setReceivers(receivers);
AudioRoutingGroup result = graphClient.communications().calls().byCallId("{call-id}").audioRoutingGroups().byAudioRoutingGroupId("{audioRoutingGroup-id}").patch(audioRoutingGroup);


```