---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancesummaryreport.GetPolicyNonComplianceSummaryReportPostRequestBody getPolicyNonComplianceSummaryReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancesummaryreport.GetPolicyNonComplianceSummaryReportPostRequestBody();
getPolicyNonComplianceSummaryReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getPolicyNonComplianceSummaryReportPostRequestBody.setSelect(select);
getPolicyNonComplianceSummaryReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getPolicyNonComplianceSummaryReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getPolicyNonComplianceSummaryReportPostRequestBody.setOrderBy(orderBy);
getPolicyNonComplianceSummaryReportPostRequestBody.setSkip(4);
getPolicyNonComplianceSummaryReportPostRequestBody.setTop(3);
getPolicyNonComplianceSummaryReportPostRequestBody.setSessionId("Session Id value");
getPolicyNonComplianceSummaryReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getPolicyNonComplianceSummaryReport().post(getPolicyNonComplianceSummaryReportPostRequestBody);


```