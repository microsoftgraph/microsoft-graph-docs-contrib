---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConnectedOrganization connectedOrganization = new ConnectedOrganization();
connectedOrganization.setDisplayName("Connected organization name");
connectedOrganization.setDescription("Connected organization description");
LinkedList<IdentitySource> identitySources = new LinkedList<IdentitySource>();
AzureActiveDirectoryTenant identitySource = new AzureActiveDirectoryTenant();
identitySource.setOdataType("#microsoft.graph.azureActiveDirectoryTenant");
identitySource.setDisplayName("Contoso");
identitySource.setTenantId("aaaabbbb-0000-cccc-1111-dddd2222eeee");
identitySources.add(identitySource);
connectedOrganization.setIdentitySources(identitySources);
connectedOrganization.setState(ConnectedOrganizationState.Proposed);
ConnectedOrganization result = graphClient.identityGovernance().entitlementManagement().connectedOrganizations().post(connectedOrganization);


```