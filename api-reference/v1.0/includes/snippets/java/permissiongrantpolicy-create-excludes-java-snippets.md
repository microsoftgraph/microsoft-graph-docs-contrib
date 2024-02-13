---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionGrantConditionSet permissionGrantConditionSet = new PermissionGrantConditionSet();
permissionGrantConditionSet.setPermissionType(PermissionType.Delegated);
permissionGrantConditionSet.setResourceApplication("00000003-0000-0000-c000-000000000000");
PermissionGrantConditionSet result = graphClient.policies().permissionGrantPolicies().byPermissionGrantPolicyId("{permissionGrantPolicy-id}").excludes().post(permissionGrantConditionSet);


```