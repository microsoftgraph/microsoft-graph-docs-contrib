---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.accountEnabled = true;
user.displayName = "MyTestUser1";
user.mailNickname = "MyTestUser1";
user.userPrincipalName = "MyTestUser1@contoso.com";
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.forceChangePasswordNextSignIn = true;
passwordProfile.password = "Contoso1234";
user.passwordProfile = passwordProfile;

graphClient.users()
	.buildRequest()
	.post(user);

```