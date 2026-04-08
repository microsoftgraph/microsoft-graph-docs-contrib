---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.QualityUpdatePolicy policy = new com.microsoft.graph.beta.models.windowsupdates.QualityUpdatePolicy();
policy.setOdataType("#microsoft.graph.windowsUpdates.qualityUpdatePolicy");
policy.setDisplayName("Patch Tuesday 123");
policy.setDescription("Testing Patch Tuesday in test environment");
LinkedList<com.microsoft.graph.beta.models.windowsupdates.ApprovalRule> approvalRules = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.ApprovalRule>();
com.microsoft.graph.beta.models.windowsupdates.QualityUpdateApprovalRule approvalRule = new com.microsoft.graph.beta.models.windowsupdates.QualityUpdateApprovalRule();
approvalRule.setOdataType("microsoft.graph.windowsUpdates.qualityUpdateApprovalRule");
approvalRule.setDeferralInDays(0);
approvalRule.setClassification(com.microsoft.graph.beta.models.windowsupdates.QualityUpdateClassification.NonSecurity);
approvalRule.setCadence(com.microsoft.graph.beta.models.windowsupdates.QualityUpdateCadence.OutOfBand);
approvalRules.add(approvalRule);
policy.setApprovalRules(approvalRules);
com.microsoft.graph.models.windowsupdates.Policy result = graphClient.admin().windows().updates().policies().post(policy);


```