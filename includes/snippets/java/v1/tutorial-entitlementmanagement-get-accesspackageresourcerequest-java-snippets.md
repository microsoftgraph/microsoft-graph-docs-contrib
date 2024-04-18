---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setRequestType(AccessPackageRequestType.AdminAdd);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("catalogId", "cec5d6ab-c75d-47c0-9c1c-92e89f66e384");
additionalData.put("justification", "");
 accessPackageResource = new ();
accessPackageResource.setResourceType("AadGroup");
accessPackageResource.setOriginId("e93e24d1-2b65-4a6c-a1dd-654a12225487");
accessPackageResource.setOriginSystem("AadGroup");
additionalData.put("accessPackageResource", accessPackageResource);
accessPackageResourceRequest.setAdditionalData(additionalData);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().resourceRequests().post(accessPackageResourceRequest);


```