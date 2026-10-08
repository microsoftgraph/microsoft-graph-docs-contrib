---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setRequestType(AccessPackageRequestType.AdminAdd);
AccessPackageResource resource = new AccessPackageResource();
resource.setDisplayName("test-mgmtgroup");
resource.setDescription("test-mgmtgroup");
resource.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
resource.setOriginSystem("AzureResources");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("resourceType", "ManagementGroup");
resource.setAdditionalData(additionalData);
accessPackageResourceRequest.setResource(resource);
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.setId("e8368470-afaf-44da-ba86-13a7318f1995");
accessPackageResourceRequest.setCatalog(catalog);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().resourceRequests().post(accessPackageResourceRequest);


```