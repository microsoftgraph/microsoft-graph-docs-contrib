---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teamwork.devices.item.updatesoftware.UpdateSoftwarePostRequestBody updateSoftwarePostRequestBody = new com.microsoft.graph.beta.teamwork.devices.item.updatesoftware.UpdateSoftwarePostRequestBody();
updateSoftwarePostRequestBody.setSoftwareType(TeamworkSoftwareType.TeamsClient);
updateSoftwarePostRequestBody.setSoftwareVersion("1.0.96.22");
graphClient.teamwork().devices().byTeamworkDeviceId("{teamworkDevice-id}").updateSoftware().post(updateSoftwarePostRequestBody);


```