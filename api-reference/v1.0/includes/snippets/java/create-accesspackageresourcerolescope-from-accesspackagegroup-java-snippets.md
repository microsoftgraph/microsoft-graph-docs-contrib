---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.id = "748f8431-c7c6-404d-8564-df67aa8cfc5e";
role.displayName = "Member";
role.originSystem = "AadGroup";
role.originId = "Member_0282e19d-bf41-435d-92a4-99bab93af305";
AccessPackageResource resource = new AccessPackageResource();
resource.id = "b16e0e71-17b4-4ebd-a3cd-8a468542e418";
resource.displayName = "example group";
resource.description = "a group whose members are to be assigned via an access package";
resource.originId = "0282e19d-bf41-435d-92a4-99bab93af305";
resource.originSystem = "AadGroup";
role.resource = resource;
accessPackageResourceRoleScope.role = role;
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.id = "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c";
scope.displayName = "Root";
scope.description = "Root Scope";
scope.originId = "0282e19d-bf41-435d-92a4-99bab93af305";
scope.originSystem = "AadGroup";
scope.isRootScope = true;
accessPackageResourceRoleScope.scope = scope;

graphClient.identityGovernance().entitlementManagement().accessPackages("cdd5f06b-752a-4c9f-97a6-82f4eda6c76d").resourceRoleScopes()
	.buildRequest()
	.post(accessPackageResourceRoleScope);

```