---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = graphClient.administrativeUnits("2sd35b05-ae71-48ab-9e7d-4r41a28te37d")
	.buildRequest()
	.get();

```