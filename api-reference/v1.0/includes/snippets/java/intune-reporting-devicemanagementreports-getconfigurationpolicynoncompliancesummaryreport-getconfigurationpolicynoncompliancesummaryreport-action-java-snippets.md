---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getconfigurationpolicynoncompliancesummaryreport.GetConfigurationPolicyNonComplianceSummaryReportPostRequestBody getConfigurationPolicyNonComplianceSummaryReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getconfigurationpolicynoncompliancesummaryreport.GetConfigurationPolicyNonComplianceSummaryReportPostRequestBody();
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setSelect(select);
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setOrderBy(orderBy);
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setSkip(4);
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setTop(3);
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setSessionId("Session Id value");
getConfigurationPolicyNonComplianceSummaryReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getConfigurationPolicyNonComplianceSummaryReport().post(getConfigurationPolicyNonComplianceSummaryReportPostRequestBody);


```