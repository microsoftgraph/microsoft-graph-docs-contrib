---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConnectedOrganization connectedOrganization = new ConnectedOrganization();
connectedOrganization.setDisplayName("Connected organization new name");
connectedOrganization.setDescription("Connected organization new description");
connectedOrganization.setState(ConnectedOrganizationState.Configured);
ConnectedOrganization result = graphClient.identityGovernance().entitlementManagement().connectedOrganizations().byConnectedOrganizationId("{connectedOrganization-id}").patch(connectedOrganization);


```