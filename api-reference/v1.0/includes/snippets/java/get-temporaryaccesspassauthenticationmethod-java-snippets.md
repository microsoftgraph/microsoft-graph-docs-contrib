---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TemporaryAccessPassAuthenticationMethod result = graphClient.users().byUserId("{user-id}").authentication().temporaryAccessPassMethods().byTemporaryAccessPassAuthenticationMethodId("{temporaryAccessPassAuthenticationMethod-id}").get();


```