---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.YearTimePeriodDefinition yearTimePeriodDefinition = new com.microsoft.graph.beta.models.industrydata.YearTimePeriodDefinition();
yearTimePeriodDefinition.setDisplayName("Fiscal Year 2022");
LocalDate endDate = LocalDate.parse("2023-06-15");
yearTimePeriodDefinition.setEndDate(endDate);
LocalDate startDate = LocalDate.parse("2022-09-01");
yearTimePeriodDefinition.setStartDate(startDate);
com.microsoft.graph.beta.models.industrydata.YearReferenceValue year = new com.microsoft.graph.beta.models.industrydata.YearReferenceValue();
year.setCode("2022");
yearTimePeriodDefinition.setYear(year);
com.microsoft.graph.models.industrydata.YearTimePeriodDefinition result = graphClient.external().industryData().years().post(yearTimePeriodDefinition);


```