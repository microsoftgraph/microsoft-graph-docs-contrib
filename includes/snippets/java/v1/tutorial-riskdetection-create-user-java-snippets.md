---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
user.setAccountEnabled(true);
user.setDisplayName("MyTestUser1");
user.setMailNickname("MyTestUser1");
user.setUserPrincipalName("MyTestUser1@contoso.com");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setForceChangePasswordNextSignIn(true);
passwordProfile.setPassword("Contoso1234");
user.setPasswordProfile(passwordProfile);
User result = graphClient.users().post(user);


```