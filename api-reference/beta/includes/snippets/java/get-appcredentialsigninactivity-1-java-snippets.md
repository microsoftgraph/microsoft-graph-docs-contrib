---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppCredentialSignInActivity appCredentialSignInActivity = graphClient.reports().appCredentialSignInActivities("ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u")
	.buildRequest()
	.get();

```