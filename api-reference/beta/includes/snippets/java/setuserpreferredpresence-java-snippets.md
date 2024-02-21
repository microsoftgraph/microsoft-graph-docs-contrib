---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.presence.setuserpreferredpresence.SetUserPreferredPresencePostRequestBody setUserPreferredPresencePostRequestBody = new com.microsoft.graph.beta.users.item.presence.setuserpreferredpresence.SetUserPreferredPresencePostRequestBody();
setUserPreferredPresencePostRequestBody.setAvailability("DoNotDisturb");
setUserPreferredPresencePostRequestBody.setActivity("DoNotDisturb");
PeriodAndDuration expirationDuration = PeriodAndDuration.ofDuration(Duration.parse("PT8H"));
setUserPreferredPresencePostRequestBody.setExpirationDuration(expirationDuration);
graphClient.users().byUserId("{user-id}").presence().setUserPreferredPresence().post(setUserPreferredPresencePostRequestBody);


```