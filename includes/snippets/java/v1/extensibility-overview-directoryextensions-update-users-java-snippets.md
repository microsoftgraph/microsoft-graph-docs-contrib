---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable", null);
additionalData.put("extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker", "E4");
user.setAdditionalData(additionalData);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```