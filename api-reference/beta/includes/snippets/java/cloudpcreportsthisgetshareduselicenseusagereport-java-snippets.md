---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcReportName reportName = CloudPcReportName.SHARED_USE_LICENSE_USAGE_REPORT;

String filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("ServicePlanId");
selectList.add("LicenseCount");
selectList.add("ClaimedLicenseCount");
selectList.add("DateTimeUTC");

int skip = 0;

int top = 100;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getSharedUseLicenseUsageReport(CloudPcReportsGetSharedUseLicenseUsageReportParameterSet
		.newBuilder()
		.withReportName(reportName)
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(null)
		.withGroupBy(null)
		.withOrderBy(null)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```