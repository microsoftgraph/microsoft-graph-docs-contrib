---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("cec5d6ab-c75d-47c0-9c1c-92e89f66e384");
accessPackageResourceRequest.setRequestType("AdminAdd");
accessPackageResourceRequest.setJustification("");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setDisplayName("Marketing resources");
accessPackageResource.setDescription("Marketing group");
accessPackageResource.setResourceType("AadGroup");
accessPackageResource.setOriginId("e93e24d1-2b65-4a6c-a1dd-654a12225487");
accessPackageResource.setOriginSystem("AadGroup");
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```