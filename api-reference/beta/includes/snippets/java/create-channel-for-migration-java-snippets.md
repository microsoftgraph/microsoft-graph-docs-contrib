---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setDisplayName("Import_150958_99z");
channel.setDescription("Import_150958_99z");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2020-03-14T11:22:17.067Z");
channel.setCreatedDateTime(createdDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@microsoft.graph.channelCreationMode", "migration");
channel.setAdditionalData(additionalData);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().post(channel);


```