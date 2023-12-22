---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.id = "cde82ecb-e461-496b-98fb-4f807c7ca640";
role.displayName = "Standard User";
role.description = "Standard User";
role.originSystem = "AadApplication";
role.originId = "a29a7690-b3c4-4ed5-96c6-f640cde06fb8";
AccessPackageResource resource = new AccessPackageResource();
resource.id = "5f80c0c7-a180-4521-b585-18200048a0d8";
resource.originId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f";
resource.originSystem = "AadApplication";
role.resource = resource;
accessPackageResourceRoleScope.role = role;
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.id = "dbeb8772-9907-4e95-a28e-a8d70dbcda69";
scope.originId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f";
scope.originSystem = "AadApplication";
scope.isRootScope = true;
accessPackageResourceRoleScope.scope = scope;

graphClient.identityGovernance().entitlementManagement().accessPackages("cdd5f06b-752a-4c9f-97a6-82f4eda6c76d").resourceRoleScopes()
	.buildRequest()
	.post(accessPackageResourceRoleScope);

```