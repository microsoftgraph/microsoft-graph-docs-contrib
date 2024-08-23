---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsHelloForBusinessAuthenticationMethod result = graphClient.users().byUserId("{user-id}").authentication().windowsHelloForBusinessMethods().byWindowsHelloForBusinessAuthenticationMethodId("{windowsHelloForBusinessAuthenticationMethod-id}").get();


```