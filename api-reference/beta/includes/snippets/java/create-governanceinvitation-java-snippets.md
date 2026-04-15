---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceInvitation governanceInvitation = new com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceInvitation();
governanceInvitation.setGoverningTenantId("aaaabbbb-0000-cccc-1111-dddd2222eeee");
com.microsoft.graph.models.tenantgovernanceservices.GovernanceInvitation result = graphClient.directory().tenantGovernance().governanceInvitations().post(governanceInvitation);


```