---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getsettingnoncompliancereport.GetSettingNonComplianceReportPostRequestBody getSettingNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getsettingnoncompliancereport.GetSettingNonComplianceReportPostRequestBody();
getSettingNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getSettingNonComplianceReportPostRequestBody.setSelect(select);
getSettingNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getSettingNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getSettingNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getSettingNonComplianceReportPostRequestBody.setSkip(4);
getSettingNonComplianceReportPostRequestBody.setTop(3);
getSettingNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getSettingNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getSettingNonComplianceReport().post(getSettingNonComplianceReportPostRequestBody);


```