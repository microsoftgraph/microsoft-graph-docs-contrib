---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FeatureRolloutPolicy featureRolloutPolicy = new FeatureRolloutPolicy();
featureRolloutPolicy.setDisplayName("PasswordHashSync Rollout Policy");
featureRolloutPolicy.setDescription("PasswordHashSync Rollout Policy");
featureRolloutPolicy.setIsEnabled(true);
featureRolloutPolicy.setIsAppliedToOrganization(false);
FeatureRolloutPolicy result = graphClient.policies().featureRolloutPolicies().byFeatureRolloutPolicyId("{featureRolloutPolicy-id}").patch(featureRolloutPolicy);


```