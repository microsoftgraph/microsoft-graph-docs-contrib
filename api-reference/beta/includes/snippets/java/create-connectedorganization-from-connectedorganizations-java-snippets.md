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
DomainIdentitySource identitySource = new DomainIdentitySource();
identitySource.setOdataType("#microsoft.graph.domainIdentitySource");
identitySource.setDomainName("example.com");
identitySource.setDisplayName("example.com");
identitySources.add(identitySource);
connectedOrganization.setIdentitySources(identitySources);
connectedOrganization.setState(ConnectedOrganizationState.Proposed);
ConnectedOrganization result = graphClient.identityGovernance().entitlementManagement().connectedOrganizations().post(connectedOrganization);


```