---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getcompliancepolicynoncompliancesummaryreport.GetCompliancePolicyNonComplianceSummaryReportPostRequestBody getCompliancePolicyNonComplianceSummaryReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getcompliancepolicynoncompliancesummaryreport.GetCompliancePolicyNonComplianceSummaryReportPostRequestBody();
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setSelect(select);
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setOrderBy(orderBy);
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setSkip(4);
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setTop(3);
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setSessionId("Session Id value");
getCompliancePolicyNonComplianceSummaryReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getCompliancePolicyNonComplianceSummaryReport().post(getCompliancePolicyNonComplianceSummaryReportPostRequestBody);


```