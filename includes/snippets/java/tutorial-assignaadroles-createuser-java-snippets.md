---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.accountEnabled = true;
user.displayName = "Aline Dupuy";
user.mailNickname = "AlineD";
user.userPrincipalName = "AlineD@Contoso.com";
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.forceChangePasswordNextSignIn = true;
passwordProfile.password = "xWwvJ]6NMw+bWH-d";
user.passwordProfile = passwordProfile;

graphClient.users()
	.buildRequest()
	.post(user);

```