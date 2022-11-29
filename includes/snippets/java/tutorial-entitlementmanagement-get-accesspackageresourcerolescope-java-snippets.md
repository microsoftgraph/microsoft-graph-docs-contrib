---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.originId = "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487";
accessPackageResourceRole.displayName = "Member";
accessPackageResourceRole.originSystem = "AadGroup";
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.id = "4a1e21c5-8a76-4578-acb1-641160e076e8";
accessPackageResource.resourceType = "Security Group";
accessPackageResource.originId = "e93e24d1-2b65-4a6c-a1dd-654a12225487";
accessPackageResource.originSystem = "AadGroup";
accessPackageResourceRole.accessPackageResource = accessPackageResource;
accessPackageResourceRoleScope.accessPackageResourceRole = accessPackageResourceRole;
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.originId = "e93e24d1-2b65-4a6c-a1dd-654a12225487";
accessPackageResourceScope.originSystem = "AadGroup";
accessPackageResourceRoleScope.accessPackageResourceScope = accessPackageResourceScope;

graphClient.identityGovernance().entitlementManagement().accessPackages("88203d16-0e31-41d4-87b2-dd402f1435e9").accessPackageResourceRoleScopes()
	.buildRequest()
	.post(accessPackageResourceRoleScope);

```