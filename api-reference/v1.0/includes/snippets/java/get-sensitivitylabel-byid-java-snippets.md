---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SensitivityLabel result = graphClient.security().dataSecurityAndGovernance().sensitivityLabels().bySensitivityLabelId("{sensitivityLabel-id}").get(requestConfiguration -> {
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
	requestConfiguration.headers.add("Client-Request-Id", "a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5");
});


```