---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessTemplate conditionalAccessTemplate = graphClient.identity().conditionalAccess().templates("c7503427-338e-4c5e-902d-abe252abfb43")
	.buildRequest()
	.get();

```