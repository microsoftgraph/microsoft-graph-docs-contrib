---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionGrantPolicy permissionGrantPolicy = new PermissionGrantPolicy();
permissionGrantPolicy.setId("my-custom-consent-policy");
permissionGrantPolicy.setDisplayName("Custom application consent policy");
permissionGrantPolicy.setDescription("A custom permission grant policy to customize conditions for granting consent.");
PermissionGrantPolicy result = graphClient.policies().permissionGrantPolicies().post(permissionGrantPolicy);


```