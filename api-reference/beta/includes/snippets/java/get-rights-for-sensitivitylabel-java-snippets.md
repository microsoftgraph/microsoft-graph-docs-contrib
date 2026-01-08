---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UsageRightsIncluded result = graphClient.security().dataSecurityAndGovernance().sensitivityLabels().bySensitivityLabelId("{sensitivityLabel-id}").rights().get(requestConfiguration -> {
	requestConfiguration.queryParameters.ownerEmail = "bob@contoso.com";
	requestConfiguration.headers.add("Authorization", "Bearer {token}");
	requestConfiguration.headers.add("Client-Request-Id", "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a");
});


```