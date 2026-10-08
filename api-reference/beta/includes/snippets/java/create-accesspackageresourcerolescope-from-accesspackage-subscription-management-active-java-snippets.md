---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475");
accessPackageResourceRole.setDisplayName("Access Review Operator Service Role");
accessPackageResourceRole.setDescription("Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("b09a0288-a83e-4ae6-8a53-bc09aeb966ea");
accessPackageResource.setDescription("Dev");
accessPackageResource.setDisplayName("Dev");
accessPackageResource.setResourceType("Subscription");
accessPackageResource.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978");
accessPackageResource.setOriginSystem("AzureResources");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRole.setOriginSystem("AzureResources");
accessPackageResourceRole.setType(RoleType.Active);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setId("c66c1e22-1093-46fb-a8a8-c0e334113ca4");
accessPackageResourceScope.setDescription("Root");
accessPackageResourceScope.setDisplayName("Root");
accessPackageResourceScope.setIsRootScope(true);
accessPackageResourceScope.setOriginSystem("AzureResources");
accessPackageResourceScope.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978");
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```