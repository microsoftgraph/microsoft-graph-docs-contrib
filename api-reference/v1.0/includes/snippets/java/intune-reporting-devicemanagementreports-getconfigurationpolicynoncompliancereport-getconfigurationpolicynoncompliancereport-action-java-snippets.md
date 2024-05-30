---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getconfigurationpolicynoncompliancereport.GetConfigurationPolicyNonComplianceReportPostRequestBody getConfigurationPolicyNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getconfigurationpolicynoncompliancereport.GetConfigurationPolicyNonComplianceReportPostRequestBody();
getConfigurationPolicyNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getConfigurationPolicyNonComplianceReportPostRequestBody.setSelect(select);
getConfigurationPolicyNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getConfigurationPolicyNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getConfigurationPolicyNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getConfigurationPolicyNonComplianceReportPostRequestBody.setSkip(4);
getConfigurationPolicyNonComplianceReportPostRequestBody.setTop(3);
getConfigurationPolicyNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getConfigurationPolicyNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getConfigurationPolicyNonComplianceReport().post(getConfigurationPolicyNonComplianceReportPostRequestBody);


```