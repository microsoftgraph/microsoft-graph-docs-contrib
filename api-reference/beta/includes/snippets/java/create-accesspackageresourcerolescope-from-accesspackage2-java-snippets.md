---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setOriginId("4");
accessPackageResourceRole.setOriginSystem("SharePointOnline");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("53c71803-a0a8-4777-aecc-075de8ee3991");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setId("5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33");
accessPackageResourceScope.setOriginId("https://microsoft.sharepoint.com/portals/Community");
accessPackageResourceScope.setOriginSystem("SharePointOnline");
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```