---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.YearTimePeriodDefinition yearTimePeriodDefinition = new com.microsoft.graph.beta.models.industrydata.YearTimePeriodDefinition();
yearTimePeriodDefinition.setDisplayName("Fiscal Year 2022");
yearTimePeriodDefinition.setId("ebf18762-ab92-487e-21d1-08daddab28bb");
com.microsoft.graph.models.industrydata.YearTimePeriodDefinition result = graphClient.external().industryData().years().byYearTimePeriodDefinitionId("{yearTimePeriodDefinition-id}").patch(yearTimePeriodDefinition);


```