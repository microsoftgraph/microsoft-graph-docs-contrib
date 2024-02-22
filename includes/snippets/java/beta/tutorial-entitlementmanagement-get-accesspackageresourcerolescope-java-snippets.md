---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setOriginId("Member_e93e24d1-2b65-4a6c-a1dd-654a12225487");
accessPackageResourceRole.setDisplayName("Member");
accessPackageResourceRole.setOriginSystem("AadGroup");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("4a1e21c5-8a76-4578-acb1-641160e076e8");
accessPackageResource.setResourceType("Security Group");
accessPackageResource.setOriginId("e93e24d1-2b65-4a6c-a1dd-654a12225487");
accessPackageResource.setOriginSystem("AadGroup");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setOriginId("e93e24d1-2b65-4a6c-a1dd-654a12225487");
accessPackageResourceScope.setOriginSystem("AadGroup");
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```