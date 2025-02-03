---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getcompliancesettingnoncompliancereport.GetComplianceSettingNonComplianceReportPostRequestBody getComplianceSettingNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getcompliancesettingnoncompliancereport.GetComplianceSettingNonComplianceReportPostRequestBody();
getComplianceSettingNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getComplianceSettingNonComplianceReportPostRequestBody.setSelect(select);
getComplianceSettingNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getComplianceSettingNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getComplianceSettingNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getComplianceSettingNonComplianceReportPostRequestBody.setSkip(4);
getComplianceSettingNonComplianceReportPostRequestBody.setTop(3);
getComplianceSettingNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getComplianceSettingNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getComplianceSettingNonComplianceReport().post(getComplianceSettingNonComplianceReportPostRequestBody);


```