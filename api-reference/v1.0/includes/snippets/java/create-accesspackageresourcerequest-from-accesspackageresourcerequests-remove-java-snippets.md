---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.requestType = AccessPackageRequestType.ADMIN_REMOVE;
AccessPackageResource resource = new AccessPackageResource();
resource.id = "1d0bb962-5bb0-4b16-a488-fda7a788b9ec";
accessPackageResourceRequest.resource = resource;
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.id = "beedadfe-01d5-4025-910b-84abb9369997";
accessPackageResourceRequest.catalog = catalog;

graphClient.identityGovernance().entitlementManagement().resourceRequests()
	.buildRequest()
	.post(accessPackageResourceRequest);

```