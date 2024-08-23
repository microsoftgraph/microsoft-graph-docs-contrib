---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Fido2AuthenticationMethod result = graphClient.me().authentication().fido2Methods().byFido2AuthenticationMethodId("{fido2AuthenticationMethod-id}").get();


```