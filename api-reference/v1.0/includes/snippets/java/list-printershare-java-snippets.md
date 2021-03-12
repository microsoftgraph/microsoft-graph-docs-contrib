---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrinterShareCollectionWithReferencesPage shares = graphClient.print().printers("{printerId}").shares()
	.buildRequest()
	.get();

```