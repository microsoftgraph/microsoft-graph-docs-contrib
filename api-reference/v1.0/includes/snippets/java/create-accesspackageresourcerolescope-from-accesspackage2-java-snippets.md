---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.displayName = "Contributors";
role.originSystem = "SharePointOnline";
role.originId = "4";
AccessPackageResource resource = new AccessPackageResource();
resource.id = "53c71803-a0a8-4777-aecc-075de8ee3991";
role.resource = resource;
accessPackageResourceRoleScope.role = role;
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.displayName = "Root";
scope.description = "Root Scope";
scope.originId = "https://contoso.sharepoint.com/portals/Community";
scope.originSystem = "SharePointOnline";
scope.isRootScope = true;
accessPackageResourceRoleScope.scope = scope;

graphClient.identityGovernance().entitlementManagement().accessPackages("{id}").resourceRoleScopes()
	.buildRequest()
	.post(accessPackageResourceRoleScope);

```