---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
DefaultUserRolePermissions defaultUserRolePermissions = new DefaultUserRolePermissions();
LinkedList<String> permissionGrantPoliciesAssigned = new LinkedList<String>();
defaultUserRolePermissions.setPermissionGrantPoliciesAssigned(permissionGrantPoliciesAssigned);
authorizationPolicy.setDefaultUserRolePermissions(defaultUserRolePermissions);
AuthorizationPolicy result = graphClient.policies().authorizationPolicy().patch(authorizationPolicy);


```