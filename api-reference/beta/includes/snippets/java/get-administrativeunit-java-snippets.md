---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = graphClient.administrativeUnits("4d7ea995-bc0f-45c0-8c3e-132e93bf95f8")
	.buildRequest()
	.get();

```