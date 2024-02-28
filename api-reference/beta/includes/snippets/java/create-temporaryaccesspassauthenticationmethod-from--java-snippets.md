---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TemporaryAccessPassAuthenticationMethod temporaryAccessPassAuthenticationMethod = new TemporaryAccessPassAuthenticationMethod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2022-06-05T00:00:00.000Z");
temporaryAccessPassAuthenticationMethod.setStartDateTime(startDateTime);
temporaryAccessPassAuthenticationMethod.setLifetimeInMinutes(60);
temporaryAccessPassAuthenticationMethod.setIsUsableOnce(false);
TemporaryAccessPassAuthenticationMethod result = graphClient.users().byUserId("{user-id}").authentication().temporaryAccessPassMethods().post(temporaryAccessPassAuthenticationMethod);


```