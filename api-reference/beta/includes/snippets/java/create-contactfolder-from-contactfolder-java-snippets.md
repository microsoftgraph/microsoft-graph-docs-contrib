---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContactFolder contactFolder = new ContactFolder();
contactFolder.setDisplayName("Family");
ContactFolder result = graphClient.me().contactFolders().byContactFolderId("{contactFolder-id}").childFolders().post(contactFolder);


```