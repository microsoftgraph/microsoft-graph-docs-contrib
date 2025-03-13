---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EmailAuthenticationMethod emailAuthenticationMethod = new EmailAuthenticationMethod();
emailAuthenticationMethod.setEmailAddress("kim@contoso.com");
EmailAuthenticationMethod result = graphClient.users().byUserId("{user-id}").authentication().emailMethods().post(emailAuthenticationMethod);


```