---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailFolderOperation result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").operations().byMailFolderOperationId("{mailFolderOperation-id}").get();


```