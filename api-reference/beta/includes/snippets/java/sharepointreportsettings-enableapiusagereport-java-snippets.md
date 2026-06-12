---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.reportsettings.sharepoint.enableapiusagereport.EnableApiUsageReportPostRequestBody enableApiUsageReportPostRequestBody = new com.microsoft.graph.beta.admin.reportsettings.sharepoint.enableapiusagereport.EnableApiUsageReportPostRequestBody();
enableApiUsageReportPostRequestBody.setMetric("EgressReport");
var result = graphClient.admin().reportSettings().sharePoint().enableApiUsageReport().post(enableApiUsageReportPostRequestBody);


```