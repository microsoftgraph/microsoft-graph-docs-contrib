---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setRequestType(AccessPackageRequestType.AdminAdd);
AccessPackageResource resource = new AccessPackageResource();
resource.setDisplayName("Test group");
resource.setOriginId("8ab659d0-3839-427d-8c54-5ae92f0b3e2e");
resource.setOriginSystem("AadGroup");
accessPackageResourceRequest.setResource(resource);
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.setId("beedadfe-01d5-4025-910b-84abb9369997");
accessPackageResourceRequest.setCatalog(catalog);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().resourceRequests().post(accessPackageResourceRequest);


```