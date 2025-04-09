---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.mailfolders.item.updateallmessagesreadstate.UpdateAllMessagesReadStatePostRequestBody updateAllMessagesReadStatePostRequestBody = new com.microsoft.graph.beta.users.item.mailfolders.item.updateallmessagesreadstate.UpdateAllMessagesReadStatePostRequestBody();
updateAllMessagesReadStatePostRequestBody.setIsRead(true);
updateAllMessagesReadStatePostRequestBody.setSuppressReadReceipts(true);
graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").updateAllMessagesReadState().post(updateAllMessagesReadStatePostRequestBody);


```