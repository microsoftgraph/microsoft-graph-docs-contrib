---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.setDisplayName("Contributors");
role.setOriginSystem("SharePointOnline");
role.setOriginId("4");
AccessPackageResource resource = new AccessPackageResource();
resource.setId("53c71803-a0a8-4777-aecc-075de8ee3991");
role.setResource(resource);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setDisplayName("Root");
scope.setDescription("Root Scope");
scope.setOriginId("https://contoso.sharepoint.com/portals/Community");
scope.setOriginSystem("SharePointOnline");
scope.setIsRootScope(true);
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```