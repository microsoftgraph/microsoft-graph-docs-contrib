---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

YearTimePeriodDefinitionCollectionPage years = graphClient.external().industryData().years()
	.buildRequest()
	.get();

```