---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailSearchFolder mailFolder = new MailSearchFolder();
mailFolder.setOdataType("microsoft.graph.mailSearchFolder");
mailFolder.setFilterQuery("contains(subject, 'Analytics')");
MailFolder result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").patch(mailFolder);


```