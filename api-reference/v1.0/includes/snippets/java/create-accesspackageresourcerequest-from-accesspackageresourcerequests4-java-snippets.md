---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.requestType = AccessPackageRequestType.ADMIN_ADD;
AccessPackageResource resource = new AccessPackageResource();
resource.displayName = "Test group";
resource.originId = "8ab659d0-3839-427d-8c54-5ae92f0b3e2e";
resource.originSystem = "AadGroup";
accessPackageResourceRequest.resource = resource;
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.id = "beedadfe-01d5-4025-910b-84abb9369997";
accessPackageResourceRequest.catalog = catalog;

graphClient.identityGovernance().entitlementManagement().resourceRequests()
	.buildRequest()
	.post(accessPackageResourceRequest);

```