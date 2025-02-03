---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getdeviceswithoutcompliancepolicyreport.GetDevicesWithoutCompliancePolicyReportPostRequestBody getDevicesWithoutCompliancePolicyReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getdeviceswithoutcompliancepolicyreport.GetDevicesWithoutCompliancePolicyReportPostRequestBody();
getDevicesWithoutCompliancePolicyReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getDevicesWithoutCompliancePolicyReportPostRequestBody.setSelect(select);
getDevicesWithoutCompliancePolicyReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getDevicesWithoutCompliancePolicyReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getDevicesWithoutCompliancePolicyReportPostRequestBody.setOrderBy(orderBy);
getDevicesWithoutCompliancePolicyReportPostRequestBody.setSkip(4);
getDevicesWithoutCompliancePolicyReportPostRequestBody.setTop(3);
getDevicesWithoutCompliancePolicyReportPostRequestBody.setSessionId("Session Id value");
getDevicesWithoutCompliancePolicyReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getDevicesWithoutCompliancePolicyReport().post(getDevicesWithoutCompliancePolicyReportPostRequestBody);


```