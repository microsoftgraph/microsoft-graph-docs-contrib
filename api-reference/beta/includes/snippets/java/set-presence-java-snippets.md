---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.presence.setpresence.SetPresencePostRequestBody setPresencePostRequestBody = new com.microsoft.graph.beta.users.item.presence.setpresence.SetPresencePostRequestBody();
setPresencePostRequestBody.setSessionId("22553876-f5ab-4529-bffb-cfe50aa89f87");
setPresencePostRequestBody.setAvailability("Available");
setPresencePostRequestBody.setActivity("Available");
PeriodAndDuration expirationDuration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
setPresencePostRequestBody.setExpirationDuration(expirationDuration);
graphClient.users().byUserId("{user-id}").presence().setPresence().post(setPresencePostRequestBody);


```