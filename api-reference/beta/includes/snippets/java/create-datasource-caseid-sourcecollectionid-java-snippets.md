---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSource dataSource = new UserSource();
dataSource.email = "badguy@contoso.com";

graphClient.compliance().ediscovery().cases("15d80234-8320-4f10-96d0-d98d53ffdfc9").sourceCollections("39b0bafd920e4360995c62e18a5e8a49").additionalSources()
	.buildRequest()
	.post(dataSource);

```