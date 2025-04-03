---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportreport.ExportReportPostRequestBody exportReportPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportreport.ExportReportPostRequestBody();
exportReportPostRequestBody.setDisplayName("Export 5");
exportReportPostRequestBody.setExportCriteria(EnumSet.of(com.microsoft.graph.beta.models.security.ExportCriteria.PartiallyIndexed));
exportReportPostRequestBody.setExportLocation(EnumSet.of(com.microsoft.graph.beta.models.security.ExportLocation.ResponsiveLocations));
exportReportPostRequestBody.setAdditionalOptions(EnumSet.of(com.microsoft.graph.beta.models.security.AdditionalOptions.CloudAttachments));
exportReportPostRequestBody.setCloudAttachmentVersion(com.microsoft.graph.beta.models.security.CloudAttachmentVersion.All);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("doucmentVersion", "recent100");
exportReportPostRequestBody.setAdditionalData(additionalData);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityExportReport().post(exportReportPostRequestBody);


```