---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.reportsettings.sharepoint.disableapiusagereport.DisableApiUsageReportPostRequestBody disableApiUsageReportPostRequestBody = new com.microsoft.graph.beta.admin.reportsettings.sharepoint.disableapiusagereport.DisableApiUsageReportPostRequestBody();
disableApiUsageReportPostRequestBody.setMetric("egressReport");
var result = graphClient.admin().reportSettings().sharePoint().disableApiUsageReport().post(disableApiUsageReportPostRequestBody);


```