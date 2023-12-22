---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.accountEnabled = true;
user.displayName = "Requestor1";
user.mailNickname = "Requestor1";
user.userPrincipalName = "Requestor1@contoso.onmicrosoft.com";
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.forceChangePasswordNextSignIn = true;
passwordProfile.password = "Contoso1234";
user.passwordProfile = passwordProfile;

graphClient.users()
	.buildRequest()
	.post(user);

```