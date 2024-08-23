---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getcompliancepolicynoncompliancereport.GetCompliancePolicyNonComplianceReportPostRequestBody getCompliancePolicyNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getcompliancepolicynoncompliancereport.GetCompliancePolicyNonComplianceReportPostRequestBody();
getCompliancePolicyNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getCompliancePolicyNonComplianceReportPostRequestBody.setSelect(select);
getCompliancePolicyNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getCompliancePolicyNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getCompliancePolicyNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getCompliancePolicyNonComplianceReportPostRequestBody.setSkip(4);
getCompliancePolicyNonComplianceReportPostRequestBody.setTop(3);
getCompliancePolicyNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getCompliancePolicyNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getCompliancePolicyNonComplianceReport().post(getCompliancePolicyNonComplianceReportPostRequestBody);


```