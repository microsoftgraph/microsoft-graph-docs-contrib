---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalSignInActivityCollectionPage servicePrincipalSignInActivities = graphClient.reports().servicePrincipalSignInActivities()
	.buildRequest()
	.get();

```