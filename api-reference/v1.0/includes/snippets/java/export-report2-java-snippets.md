---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportreport.ExportReportPostRequestBody exportReportPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportreport.ExportReportPostRequestBody();
exportReportPostRequestBody.setDisplayName("Export 2");
exportReportPostRequestBody.setExportCriteria(EnumSet.of(com.microsoft.graph.models.security.ExportCriteria.SearchHits, com.microsoft.graph.models.security.ExportCriteria.PartiallyIndexed));
exportReportPostRequestBody.setExportLocation(EnumSet.of(com.microsoft.graph.models.security.ExportLocation.ResponsiveLocations, com.microsoft.graph.models.security.ExportLocation.NonresponsiveLocations));
exportReportPostRequestBody.setAdditionalOptions(EnumSet.of(com.microsoft.graph.models.security.AdditionalOptions.None));
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityExportReport().post(exportReportPostRequestBody);


```