---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

YearTimePeriodDefinition yearTimePeriodDefinition = new YearTimePeriodDefinition();
yearTimePeriodDefinition.displayName = "Fiscal Year 2022";
yearTimePeriodDefinition.id = "ebf18762-ab92-487e-21d1-08daddab28bb";

graphClient.external().industryData().years("ebf18762-ab92-487e-21d1-08daddab28bb")
	.buildRequest()
	.patch(yearTimePeriodDefinition);

```