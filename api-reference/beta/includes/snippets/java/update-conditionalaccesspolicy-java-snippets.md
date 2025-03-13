---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<RiskLevel> signInRiskLevels = new LinkedList<RiskLevel>();
signInRiskLevels.add(RiskLevel.High);
signInRiskLevels.add(RiskLevel.Medium);
signInRiskLevels.add(RiskLevel.Low);
conditions.setSignInRiskLevels(signInRiskLevels);
conditionalAccessPolicy.setConditions(conditions);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().byConditionalAccessPolicyId("{conditionalAccessPolicy-id}").patch(conditionalAccessPolicy);


```