---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventWebinarRegistrationConfiguration result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").registrationConfiguration().get();


```