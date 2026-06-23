---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.setId("055c76c1-a466-4f1a-9279-4a2ccaa7ac3e");
role.setOriginId("/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475");
role.setDisplayName("Access Review Operator Service Role");
role.setDescription("Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.");
AccessPackageResource resource = new AccessPackageResource();
resource.setId("c347ca9b-a9cc-4df9-bc3c-00c8e0297692");
resource.setDescription("test-mgmtgroup");
resource.setDisplayName("test-mgmtgroup");
resource.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
resource.setOriginSystem("AzureResources");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("resourceType", "ManagementGroup");
resource.setAdditionalData(additionalData);
role.setResource(resource);
role.setOriginSystem("AzureResources");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("type", "eligible");
role.setAdditionalData(additionalData1);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setId("338613b3-b410-4c6d-b5e9-45590bc8a357");
scope.setDisplayName("Root");
scope.setDescription("Root Scope");
scope.setIsRootScope(true);
scope.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
scope.setOriginSystem("AzureResources");
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```