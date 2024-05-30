---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getfrontlinereport.GetFrontlineReportPostRequestBody getFrontlineReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getfrontlinereport.GetFrontlineReportPostRequestBody();
getFrontlineReportPostRequestBody.setReportName(CloudPcReportName.FrontlineLicenseUsageReport);
getFrontlineReportPostRequestBody.setFilter("ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'");
LinkedList<String> select = new LinkedList<String>();
select.add("ServicePlanId");
select.add("LicenseCount");
select.add("ClaimedLicenseCount");
select.add("DateTimeUTC");
getFrontlineReportPostRequestBody.setSelect(select);
getFrontlineReportPostRequestBody.setSkip(0);
getFrontlineReportPostRequestBody.setTop(100);
graphClient.deviceManagement().virtualEndpoint().reports().getFrontlineReport().post(getFrontlineReportPostRequestBody);


```