---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.id = "6646a29e-da03-49f6-bcd9-dec124492de3";
role.displayName = "Contributors";
role.description = null;
role.originSystem = "SharePointOnline";
role.originId = "4";
AccessPackageResource resource = new AccessPackageResource();
resource.id = "53c71803-a0a8-4777-aecc-075de8ee3991";
role.resource = resource;
accessPackageResourceRoleScope.role = role;
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33";
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