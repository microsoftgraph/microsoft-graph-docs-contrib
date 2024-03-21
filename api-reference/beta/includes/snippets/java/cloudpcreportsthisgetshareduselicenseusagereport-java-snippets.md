---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getshareduselicenseusagereport.GetSharedUseLicenseUsageReportPostRequestBody getSharedUseLicenseUsageReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getshareduselicenseusagereport.GetSharedUseLicenseUsageReportPostRequestBody();
getSharedUseLicenseUsageReportPostRequestBody.setReportName(CloudPcReportName.SharedUseLicenseUsageReport);
getSharedUseLicenseUsageReportPostRequestBody.setFilter("ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'");
LinkedList<String> select = new LinkedList<String>();
select.add("ServicePlanId");
select.add("LicenseCount");
select.add("ClaimedLicenseCount");
select.add("DateTimeUTC");
getSharedUseLicenseUsageReportPostRequestBody.setSelect(select);
getSharedUseLicenseUsageReportPostRequestBody.setSkip(0);
getSharedUseLicenseUsageReportPostRequestBody.setTop(100);
graphClient.deviceManagement().virtualEndpoint().reports().getSharedUseLicenseUsageReport().post(getSharedUseLicenseUsageReportPostRequestBody);


```