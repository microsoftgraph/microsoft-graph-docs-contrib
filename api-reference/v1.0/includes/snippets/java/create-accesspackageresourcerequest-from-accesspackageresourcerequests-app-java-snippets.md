---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.requestType = AccessPackageRequestType.ADMIN_ADD;
AccessPackageResource resource = new AccessPackageResource();
resource.originId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f";
resource.originSystem = "AadApplication";
accessPackageResourceRequest.resource = resource;
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.id = "beedadfe-01d5-4025-910b-84abb9369997";
accessPackageResourceRequest.catalog = catalog;

graphClient.identityGovernance().entitlementManagement().resourceRequests()
	.buildRequest()
	.post(accessPackageResourceRequest);

```