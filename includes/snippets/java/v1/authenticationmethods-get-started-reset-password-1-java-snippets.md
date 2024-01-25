---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String newPassword = "29sdjfw#fajsdA_a_3an3223";

graphClient.users("CameronW@Contoso.com").authentication().passwordMethods("28c10230-6103-485e-b985-444c60001490")
	.resetPassword(AuthenticationMethodResetPasswordParameterSet
		.newBuilder()
		.withNewPassword(newPassword)
		.build())
	.buildRequest()
	.post();

```