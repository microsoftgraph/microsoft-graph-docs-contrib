---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ActivityBasedTimeoutPolicy activityBasedTimeoutPolicy = new ActivityBasedTimeoutPolicy();
LinkedList<String> definition = new LinkedList<String>();
definition.add("definition-value");
activityBasedTimeoutPolicy.setDefinition(definition);
activityBasedTimeoutPolicy.setDisplayName("displayName-value");
activityBasedTimeoutPolicy.setIsOrganizationDefault(true);
ActivityBasedTimeoutPolicy result = graphClient.policies().activityBasedTimeoutPolicies().byActivityBasedTimeoutPolicyId("{activityBasedTimeoutPolicy-id}").patch(activityBasedTimeoutPolicy);


```