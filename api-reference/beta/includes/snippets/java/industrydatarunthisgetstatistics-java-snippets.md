---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IndustryDataRunStatistics industryDataRunStatistics = graphClient.external().industryData().runs("918d4a8f-599b-4f6a-b409-e892855db534")
	.getStatistics()
	.buildRequest()
	.get();

```