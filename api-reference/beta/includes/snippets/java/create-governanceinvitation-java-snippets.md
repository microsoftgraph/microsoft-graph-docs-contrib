---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceInvitation governanceInvitation = new GovernanceInvitation();
governanceInvitation.setGoverningTenantId("aaaabbbb-0000-cccc-1111-dddd2222eeee");
GovernanceInvitation result = graphClient.directory().tenantGovernance().governanceInvitations().post(governanceInvitation);


```