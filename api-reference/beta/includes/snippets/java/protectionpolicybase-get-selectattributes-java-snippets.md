---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProtectionPolicyBase result = graphClient.solutions().backupRestore().protectionPolicies().byProtectionPolicyBaseId("{protectionPolicyBase-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "status", "protectionPolicyArtifactCount"};
	requestConfiguration.headers.add("Authorization", "Bearer <Access-Token>");
});


```