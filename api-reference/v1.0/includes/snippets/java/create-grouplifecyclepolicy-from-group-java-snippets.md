---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupLifecyclePolicy groupLifecyclePolicy = new GroupLifecyclePolicy();
groupLifecyclePolicy.setGroupLifetimeInDays(100);
groupLifecyclePolicy.setManagedGroupTypes("Selected");
groupLifecyclePolicy.setAlternateNotificationEmails("admin@contoso.com");
GroupLifecyclePolicy result = graphClient.groupLifecyclePolicies().post(groupLifecyclePolicy);


```