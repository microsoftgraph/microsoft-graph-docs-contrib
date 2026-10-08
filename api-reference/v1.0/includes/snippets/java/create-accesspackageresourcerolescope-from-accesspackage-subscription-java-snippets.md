---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475");
role.setDisplayName("Access Review Operator Service Role");
role.setDescription("Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.");
AccessPackageResource resource = new AccessPackageResource();
resource.setId("b09a0288-a83e-4ae6-8a53-bc09aeb966ea");
resource.setDescription("Dev");
resource.setDisplayName("Dev");
resource.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978");
resource.setOriginSystem("AzureResources");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("resourceType", "Subscription");
resource.setAdditionalData(additionalData);
role.setResource(resource);
role.setOriginSystem("AzureResources");
role.setType(RoleType.Active);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setId("e1e0ec8c-472d-4ec5-a8f9-29e0bc275640");
scope.setDescription("/resourceGroups/rg");
scope.setDisplayName("/resourceGroups/rg");
scope.setIsRootScope(false);
scope.setOriginSystem("AzureResources");
scope.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg");
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```