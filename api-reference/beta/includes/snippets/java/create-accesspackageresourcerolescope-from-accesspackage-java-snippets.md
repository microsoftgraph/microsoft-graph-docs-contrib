---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setOriginId("Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca");
accessPackageResourceRole.setDisplayName("Member");
accessPackageResourceRole.setOriginSystem("AadGroup");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("1d08498d-72a1-403f-8511-6b1f875746a0");
accessPackageResource.setResourceType("O365 Group");
accessPackageResource.setOriginId("b31fe1f1-3651-488f-bd9a-1711887fd4ca");
accessPackageResource.setOriginSystem("AadGroup");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setOriginId("b31fe1f1-3651-488f-bd9a-1711887fd4ca");
accessPackageResourceScope.setOriginSystem("AadGroup");
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```