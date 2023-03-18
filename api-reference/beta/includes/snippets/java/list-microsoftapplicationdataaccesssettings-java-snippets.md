---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MicrosoftApplicationDataAccessSettings microsoftApplicationDataAccessSettings = graphClient.organization("{organizationId}").settings().microsoftApplicationDataAccess()
	.buildRequest()
	.get();

```