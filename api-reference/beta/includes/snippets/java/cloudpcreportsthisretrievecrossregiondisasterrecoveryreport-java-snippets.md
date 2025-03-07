---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecrossregiondisasterrecoveryreport.RetrieveCrossRegionDisasterRecoveryReportPostRequestBody retrieveCrossRegionDisasterRecoveryReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecrossregiondisasterrecoveryreport.RetrieveCrossRegionDisasterRecoveryReportPostRequestBody();
retrieveCrossRegionDisasterRecoveryReportPostRequestBody.setFilter("DisasterRecoveryStatus eq 'Active outage'");
LinkedList<String> select = new LinkedList<String>();
select.add("Id");
select.add("CloudPcId");
select.add("UserId");
select.add("UserSettingId");
select.add("DeviceId");
select.add("CloudPCDeviceDisplayName");
select.add("UserPrincipalName");
select.add("IsCrossRegionEnabled");
select.add("CrossRegionHealthStatus");
select.add("LicenseType");
select.add("DisasterRecoveryStatus");
select.add("CurrentRestorePointDateTime");
select.add("ActivationExpirationDateTime");
retrieveCrossRegionDisasterRecoveryReportPostRequestBody.setSelect(select);
retrieveCrossRegionDisasterRecoveryReportPostRequestBody.setSkip(0);
retrieveCrossRegionDisasterRecoveryReportPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().retrieveCrossRegionDisasterRecoveryReport().post(retrieveCrossRegionDisasterRecoveryReportPostRequestBody);


```