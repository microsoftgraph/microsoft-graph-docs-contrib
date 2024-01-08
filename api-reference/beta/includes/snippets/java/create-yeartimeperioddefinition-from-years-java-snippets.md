---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

YearTimePeriodDefinition yearTimePeriodDefinition = new YearTimePeriodDefinition();
yearTimePeriodDefinition.displayName = "Fiscal Year 2022";
yearTimePeriodDefinition.endDate = new DateOnly(1900,1,1);
yearTimePeriodDefinition.startDate = new DateOnly(1900,1,1);
YearReferenceValue year = new YearReferenceValue();
year.code = "2022";
yearTimePeriodDefinition.year = year;

graphClient.external().industryData().years()
	.buildRequest()
	.post(yearTimePeriodDefinition);

```