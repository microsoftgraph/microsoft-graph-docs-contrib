---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ActivityBasedTimeoutPolicy activityBasedTimeoutPolicy = new ActivityBasedTimeoutPolicy();
activityBasedTimeoutPolicy.setDisplayName("Idle timeout for all apps");
ActivityBasedTimeoutPolicy result = graphClient.policies().activityBasedTimeoutPolicies().byActivityBasedTimeoutPolicyId("{activityBasedTimeoutPolicy-id}").patch(activityBasedTimeoutPolicy);


```