---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.setId("748f8431-c7c6-404d-8564-df67aa8cfc5e");
role.setDisplayName("Member");
role.setOriginSystem("AadGroup");
role.setOriginId("Member_0282e19d-bf41-435d-92a4-99bab93af305");
AccessPackageResource resource = new AccessPackageResource();
resource.setId("b16e0e71-17b4-4ebd-a3cd-8a468542e418");
resource.setDisplayName("example group");
resource.setDescription("a group whose members are to be assigned via an access package");
resource.setOriginId("0282e19d-bf41-435d-92a4-99bab93af305");
resource.setOriginSystem("AadGroup");
role.setResource(resource);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setId("83b3e3e9-c8b3-481b-ad80-53e29d1eda9c");
scope.setDisplayName("Root");
scope.setDescription("Root Scope");
scope.setOriginId("0282e19d-bf41-435d-92a4-99bab93af305");
scope.setOriginSystem("AadGroup");
scope.setIsRootScope(true);
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```