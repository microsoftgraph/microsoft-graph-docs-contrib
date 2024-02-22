---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MessageCollectionResponse result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").messages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.orderby = new String []{"from/emailAddress/name desc", "subject"};
});


```