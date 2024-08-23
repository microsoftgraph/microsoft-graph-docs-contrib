---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRoleScope accessPackageResourceRoleScope = new AccessPackageResourceRoleScope();
AccessPackageResourceRole role = new AccessPackageResourceRole();
role.setId("cde82ecb-e461-496b-98fb-4f807c7ca640");
role.setDisplayName("Standard User");
role.setDescription("Standard User");
role.setOriginSystem("AadApplication");
role.setOriginId("a29a7690-b3c4-4ed5-96c6-f640cde06fb8");
AccessPackageResource resource = new AccessPackageResource();
resource.setId("5f80c0c7-a180-4521-b585-18200048a0d8");
resource.setOriginId("e81d7f57-0840-45e1-894b-f505c1bdcc1f");
resource.setOriginSystem("AadApplication");
role.setResource(resource);
accessPackageResourceRoleScope.setRole(role);
AccessPackageResourceScope scope = new AccessPackageResourceScope();
scope.setId("dbeb8772-9907-4e95-a28e-a8d70dbcda69");
scope.setOriginId("e81d7f57-0840-45e1-894b-f505c1bdcc1f");
scope.setOriginSystem("AadApplication");
scope.setIsRootScope(true);
accessPackageResourceRoleScope.setScope(scope);
AccessPackageResourceRoleScope result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").resourceRoleScopes().post(accessPackageResourceRoleScope);


```