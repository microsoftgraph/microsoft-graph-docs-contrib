---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("de9315c1-272b-4905-924b-cc112ca180c7");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setDisplayName("Community Outreach");
accessPackageResource.setDescription("https://contoso.sharepoint.com/sites/CSR");
accessPackageResource.setResourceType("SharePoint Online Site");
accessPackageResource.setOriginId("https://contoso.sharepoint.com/sites/CSR");
accessPackageResource.setOriginSystem("SharePointOnline");
AccessPackageResourceEnvironment accessPackageResourceEnvironment = new AccessPackageResourceEnvironment();
accessPackageResourceEnvironment.setOriginId("https://contoso-admin.sharepoint.com/");
accessPackageResource.setAccessPackageResourceEnvironment(accessPackageResourceEnvironment);
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
accessPackageResourceRequest.setRequestType("AdminAdd");
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```