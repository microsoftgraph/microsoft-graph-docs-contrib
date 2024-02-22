---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Organization organization = new Organization();
organization.setOdataType("#microsoft.graph.organization");
organization.setMobileDeviceManagementAuthority(MdmAuthority.Intune);
Organization result = graphClient.organization().byOrganizationId("{organization-id}").patch(organization);


```