---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OwnerlessGroupPolicy ownerlessGroupPolicy = new OwnerlessGroupPolicy();
ownerlessGroupPolicy.setIsEnabled(false);
OwnerlessGroupPolicy result = graphClient.policies().ownerlessGroupPolicy().patch(ownerlessGroupPolicy);


```