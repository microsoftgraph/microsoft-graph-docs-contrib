---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailSearchFolder mailFolder = new MailSearchFolder();
mailFolder.setOdataType("microsoft.graph.mailSearchFolder");
mailFolder.setDisplayName("Weekly digests");
mailFolder.setIncludeNestedFolders(true);
LinkedList<String> sourceFolderIds = new LinkedList<String>();
sourceFolderIds.add("AQMkADYAAAIBDAAAAA==");
mailFolder.setSourceFolderIds(sourceFolderIds);
mailFolder.setFilterQuery("contains(subject, 'weekly digest')");
MailFolder result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").childFolders().post(mailFolder);


```