---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancereport.GetPolicyNonComplianceReportPostRequestBody getPolicyNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancereport.GetPolicyNonComplianceReportPostRequestBody();
getPolicyNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getPolicyNonComplianceReportPostRequestBody.setSelect(select);
getPolicyNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getPolicyNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getPolicyNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getPolicyNonComplianceReportPostRequestBody.setSkip(4);
getPolicyNonComplianceReportPostRequestBody.setTop(3);
getPolicyNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getPolicyNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getPolicyNonComplianceReport().post(getPolicyNonComplianceReportPostRequestBody);


```