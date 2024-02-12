---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("beedadfe-01d5-4025-910b-84abb9369997");
accessPackageResourceRequest.setRequestType("AdminRemove");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("354078e5-dbce-4894-8af4-0ab274d41662");
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```