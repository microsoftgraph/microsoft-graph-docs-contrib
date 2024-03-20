---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.checkin.CheckinPostRequestBody checkinPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.checkin.CheckinPostRequestBody();
checkinPostRequestBody.setComment("Updating the latest guidelines");
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").checkin().post(checkinPostRequestBody);


```