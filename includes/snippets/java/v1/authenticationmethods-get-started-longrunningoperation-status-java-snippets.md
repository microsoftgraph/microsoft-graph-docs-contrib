---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LongRunningOperation result = graphClient.users().byUserId("{user-id}").authentication().operations().byLongRunningOperationId("{longRunningOperation-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.aadgdc = "AM4P";
	requestConfiguration.queryParameters.aadgsu = "ssprprod-a";
});


```