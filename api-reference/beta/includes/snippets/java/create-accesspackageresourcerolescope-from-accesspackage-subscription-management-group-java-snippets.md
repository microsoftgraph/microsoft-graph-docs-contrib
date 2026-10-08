---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole accessPackageResourceRole = new AccessPackageResourceRole();
accessPackageResourceRole.setId("055c76c1-a466-4f1a-9279-4a2ccaa7ac3e");
accessPackageResourceRole.setOriginId("/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475");
accessPackageResourceRole.setDisplayName("Access Review Operator Service Role");
accessPackageResourceRole.setDescription("Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("c347ca9b-a9cc-4df9-bc3c-00c8e0297692");
accessPackageResource.setDescription("test-mgmtgroup");
accessPackageResource.setDisplayName("test-mgmtgroup");
accessPackageResource.setResourceType("ManagementGroup");
accessPackageResource.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
accessPackageResource.setOriginSystem("AzureResources");
accessPackageResourceRole.setAccessPackageResource(accessPackageResource);
accessPackageResourceRole.setOriginSystem("AzureResources");
accessPackageResourceRole.setType(RoleType.Eligible);
accessPackageResourceRoleScope.setAccessPackageResourceRole(accessPackageResourceRole);
AccessPackageResourceScope accessPackageResourceScope = new AccessPackageResourceScope();
accessPackageResourceScope.setId("338613b3-b410-4c6d-b5e9-45590bc8a357");
accessPackageResourceScope.setDisplayName("Root");
accessPackageResourceScope.setDescription("Root Scope");
accessPackageResourceScope.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
accessPackageResourceScope.setOriginSystem("AzureResources");
accessPackageResourceScope.setIsRootScope(true);
accessPackageResourceRoleScope.setAccessPackageResourceScope(accessPackageResourceScope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").accessPackageResourceRoleScopes().post(accessPackageResourceRoleScope);


```