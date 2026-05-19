---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("e8368470-afaf-44da-ba86-13a7318f1995");
accessPackageResourceRequest.setRequestType("AdminAdd");
accessPackageResourceRequest.setJustification("");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("");
accessPackageResource.setDisplayName("test-mgmtgroup");
accessPackageResource.setDescription("test-mgmtgroup");
accessPackageResource.setResourceType("ManagementGroup");
accessPackageResource.setOriginId("/providers/Microsoft.Management/managementGroups/test-mgmtgroup");
accessPackageResource.setOriginSystem("AzureResources");
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```