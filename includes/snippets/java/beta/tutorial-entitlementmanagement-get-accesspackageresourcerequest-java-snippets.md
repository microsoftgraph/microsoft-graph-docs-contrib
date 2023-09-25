---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.catalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384";
accessPackageResourceRequest.requestType = "AdminAdd";
accessPackageResourceRequest.justification = "";
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.displayName = "Marketing resources";
accessPackageResource.description = "Marketing group";
accessPackageResource.resourceType = "AadGroup";
accessPackageResource.originId = "e93e24d1-2b65-4a6c-a1dd-654a12225487";
accessPackageResource.originSystem = "AadGroup";
accessPackageResourceRequest.accessPackageResource = accessPackageResource;

graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests()
	.buildRequest()
	.post(accessPackageResourceRequest);

```