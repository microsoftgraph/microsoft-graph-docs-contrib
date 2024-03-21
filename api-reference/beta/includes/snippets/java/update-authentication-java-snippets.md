---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SignInPreferences signInPreferences = new SignInPreferences();
signInPreferences.setUserPreferredMethodForSecondaryAuthentication(UserDefaultAuthenticationMethodType.Oath);
SignInPreferences result = graphClient.users().byUserId("{user-id}").authentication().signInPreferences().patch(signInPreferences);


```