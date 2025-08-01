---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPC result = graphClient.deviceManagement().virtualEndpoint().cloudPCs().byCloudPCId("{cloudPC-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.customFilter = "contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')";
});


```