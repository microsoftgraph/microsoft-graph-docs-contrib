---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("26ac0c0a-08bc-4a7b-a313-839f58044ba5");
accessPackageResourceRequest.setRequestType("AdminAdd");
accessPackageResourceRequest.setJustification("");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setDisplayName("Sales");
accessPackageResource.setDescription("https://contoso.sharepoint.com/sites/Sales");
accessPackageResource.setUrl("https://contoso.sharepoint.com/sites/Sales");
accessPackageResource.setResourceType("SharePoint Online Site");
accessPackageResource.setOriginId("https://contoso.sharepoint.com/sites/Sales");
accessPackageResource.setOriginSystem("SharePointOnline");
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```