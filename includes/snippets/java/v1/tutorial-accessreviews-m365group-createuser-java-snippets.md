---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
user.setAccountEnabled(true);
user.setDisplayName("Aline Dupuy");
user.setMailNickname("AlineD");
user.setUserPrincipalName("AlineD@contoso.com");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setForceChangePasswordNextSignIn(true);
passwordProfile.setPassword("xWwvJ]6NMw+bWH-d");
user.setPasswordProfile(passwordProfile);
User result = graphClient.users().post(user);


```