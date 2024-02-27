---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setRequestType(AccessPackageRequestType.AdminRemove);
AccessPackageResource resource = new AccessPackageResource();
resource.setId("1d0bb962-5bb0-4b16-a488-fda7a788b9ec");
accessPackageResourceRequest.setResource(resource);
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.setId("beedadfe-01d5-4025-910b-84abb9369997");
accessPackageResourceRequest.setCatalog(catalog);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().resourceRequests().post(accessPackageResourceRequest);


```