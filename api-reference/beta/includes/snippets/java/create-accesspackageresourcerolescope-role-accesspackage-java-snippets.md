---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 role = new ();
role.setOriginId("Eligible");
role.setDisplayName("Eligible Member");
role.setOriginSystem("DirectoryRole");
 resource = new ();
resource.setId("ea036095-57a6-4c90-a640-013edf151eb1");
role.setResource(resource);
additionalData.put("role", role);
 scope = new ();
scope.setDescription("Root Scope");
scope.setDisplayName("Root");
scope.setIsRootScope(true);
scope.setOriginSystem("DirectoryRole");
scope.setOriginId("c4e39bd9-1100-46d3-8c65-fb160da0071f");
additionalData.put("scope", scope);
accessPackageResourceRoleScope.setAdditionalData(additionalData);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```