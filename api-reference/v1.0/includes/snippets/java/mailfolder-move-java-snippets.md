---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.mailfolders.item.move.MovePostRequestBody movePostRequestBody = new com.microsoft.graph.users.item.mailfolders.item.move.MovePostRequestBody();
movePostRequestBody.setDestinationId("destinationId-value");
var result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").move().post(movePostRequestBody);


```