---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getconfigurationsettingnoncompliancereport.GetConfigurationSettingNonComplianceReportPostRequestBody getConfigurationSettingNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getconfigurationsettingnoncompliancereport.GetConfigurationSettingNonComplianceReportPostRequestBody();
getConfigurationSettingNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getConfigurationSettingNonComplianceReportPostRequestBody.setSelect(select);
getConfigurationSettingNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getConfigurationSettingNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getConfigurationSettingNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getConfigurationSettingNonComplianceReportPostRequestBody.setSkip(4);
getConfigurationSettingNonComplianceReportPostRequestBody.setTop(3);
getConfigurationSettingNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getConfigurationSettingNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getConfigurationSettingNonComplianceReport().post(getConfigurationSettingNonComplianceReportPostRequestBody);


```