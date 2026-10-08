---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setOriginId("EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18");
accessPackageResourceRole.setDisplayName("Eligible Member");
accessPackageResourceRole.setOriginSystem("AadGroup");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("b86a1828-3171-409e-8343-32a224f324a0");
accessPackageResource.setResourceType("O365 Group");
accessPackageResource.setOriginId("bcfae74a-91a6-46e9-99bf-89d6487cc3f3");
accessPackageResource.setOriginSystem("AadGroup");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setOriginId("bcfae74a-91a6-46e9-99bf-89d6487cc3f3");
accessPackageResourceScope.setOriginSystem("AadGroup");
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```