---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkDeviceOperation result = graphClient.teamwork().devices().byTeamworkDeviceId("{teamworkDevice-id}").operations().byTeamworkDeviceOperationId("{teamworkDeviceOperation-id}").get();


```