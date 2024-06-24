---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FeatureRolloutPolicy featureRolloutPolicy = new FeatureRolloutPolicy();
featureRolloutPolicy.setDisplayName("PassthroughAuthentication rollout policy");
featureRolloutPolicy.setDescription("PassthroughAuthentication rollout policy");
featureRolloutPolicy.setFeature(StagedFeatureName.PassthroughAuthentication);
featureRolloutPolicy.setIsEnabled(true);
featureRolloutPolicy.setIsAppliedToOrganization(false);
FeatureRolloutPolicy result = graphClient.policies().featureRolloutPolicies().post(featureRolloutPolicy);


```