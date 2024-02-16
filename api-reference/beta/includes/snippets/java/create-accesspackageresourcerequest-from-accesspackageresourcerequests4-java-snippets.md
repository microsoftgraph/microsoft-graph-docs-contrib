---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("beedadfe-01d5-4025-910b-84abb9369997");
accessPackageResourceRequest.setRequestType("AdminAdd");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setOriginId("c6294667-7348-4f5a-be73-9d2c65f574f3");
accessPackageResource.setOriginSystem("AadGroup");
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```