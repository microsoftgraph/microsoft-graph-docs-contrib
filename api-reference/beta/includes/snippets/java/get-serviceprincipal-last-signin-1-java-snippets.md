---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalSignInActivity servicePrincipalSignInActivity = graphClient.reports().servicePrincipalSignInActivities("ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3")
	.buildRequest()
	.get();

```