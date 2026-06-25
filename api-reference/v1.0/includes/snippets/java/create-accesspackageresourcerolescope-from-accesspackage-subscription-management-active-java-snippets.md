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
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("type", "active");
role.setAdditionalData(additionalData1);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setId("c66c1e22-1093-46fb-a8a8-c0e334113ca4");
scope.setDescription("Root");
scope.setDisplayName("Root");
scope.setIsRootScope(true);
scope.setOriginSystem("AzureResources");
scope.setOriginId("/subscriptions/828b526f-c769-4b19-9797-734b4843b978");
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```