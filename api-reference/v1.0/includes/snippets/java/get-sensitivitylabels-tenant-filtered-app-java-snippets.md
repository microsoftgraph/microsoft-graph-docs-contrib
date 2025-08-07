---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SensitivityLabelCollectionResponse result = graphClient.security().dataSecurityAndGovernance().sensitivityLabels().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "applicableTo has 'file' and id in ('4e4234dd-377b-42a3-935b-0e42f138fa23','b7a21bba-8197-491f-a5d6-0d0f955397ca')";
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
	requestConfiguration.headers.add("Client-Request-Id", "a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5");
});


```