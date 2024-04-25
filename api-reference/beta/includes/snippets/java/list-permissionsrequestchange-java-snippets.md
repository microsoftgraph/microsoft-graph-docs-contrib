---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionsRequestChangeCollectionResponse result = graphClient.identityGovernance().permissionsManagement().permissionsRequestChanges().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "modificationDateTime gt {t}";
});


```