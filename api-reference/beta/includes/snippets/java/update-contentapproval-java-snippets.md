---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.ContentApproval complianceChange = new com.microsoft.graph.beta.models.windowsupdates.ContentApproval();
complianceChange.setOdataType("#microsoft.graph.windowsUpdates.contentApproval");
complianceChange.setIsRevoked(true);
com.microsoft.graph.models.windowsupdates.ComplianceChange result = graphClient.admin().windows().updates().updatePolicies().byUpdatePolicyId("{updatePolicy-id}").complianceChanges().byComplianceChangeId("{complianceChange-id}").patch(complianceChange);


```