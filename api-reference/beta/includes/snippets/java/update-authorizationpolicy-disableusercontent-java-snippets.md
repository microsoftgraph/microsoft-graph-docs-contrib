---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
LinkedList<String> permissionGrantPolicyIdsAssignedToDefaultUserRole = new LinkedList<String>();
authorizationPolicy.setPermissionGrantPolicyIdsAssignedToDefaultUserRole(permissionGrantPolicyIdsAssignedToDefaultUserRole);
AuthorizationPolicy result = graphClient.policies().authorizationPolicy().byAuthorizationPolicyId("{authorizationPolicy-id}").patch(authorizationPolicy);


```