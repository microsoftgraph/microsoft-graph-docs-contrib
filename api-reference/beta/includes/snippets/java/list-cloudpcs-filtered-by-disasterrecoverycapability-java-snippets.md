---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPCCollectionResponse result = graphClient.deviceManagement().virtualEndpoint().cloudPCs().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "disasterRecoveryCapability"};
	requestConfiguration.queryParameters.filter = "disasterRecoveryCapability/capabilityType eq 'failover'";
});


```