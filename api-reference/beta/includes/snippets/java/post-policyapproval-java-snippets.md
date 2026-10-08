---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.PolicyApproval policyApproval = new com.microsoft.graph.beta.models.windowsupdates.PolicyApproval();
policyApproval.setOdataType("#microsoft.graph.windowsUpdates.policyApproval");
policyApproval.setCatalogEntryId("1d8864c1-531f-4d5b-8225-8653ef4316d8");
policyApproval.setStatus(com.microsoft.graph.beta.models.windowsupdates.ApprovalStatus.Approved);
com.microsoft.graph.models.windowsupdates.PolicyApproval result = graphClient.admin().windows().updates().policies().byPolicyId("{policy-id}").approvals().post(policyApproval);


```