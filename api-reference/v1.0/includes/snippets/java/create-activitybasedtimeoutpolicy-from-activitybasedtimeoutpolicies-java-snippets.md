---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ActivityBasedTimeoutPolicy activityBasedTimeoutPolicy = new ActivityBasedTimeoutPolicy();
LinkedList<String> definition = new LinkedList<String>();
definition.add("{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"00:05:00\"}]}}");
activityBasedTimeoutPolicy.setDefinition(definition);
activityBasedTimeoutPolicy.setDisplayName("activityBasedTimeoutPolicies test");
activityBasedTimeoutPolicy.setIsOrganizationDefault(true);
ActivityBasedTimeoutPolicy result = graphClient.policies().activityBasedTimeoutPolicies().post(activityBasedTimeoutPolicy);


```