---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegationSettingsCollectionResponse result = graphClient.me().communications().callSettings().delegators().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "allowedActions/makeCalls eq true";
});


```