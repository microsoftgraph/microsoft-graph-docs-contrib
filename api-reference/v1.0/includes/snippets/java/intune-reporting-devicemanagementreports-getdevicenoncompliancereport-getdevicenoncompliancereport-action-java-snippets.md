---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getdevicenoncompliancereport.GetDeviceNonComplianceReportPostRequestBody getDeviceNonComplianceReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getdevicenoncompliancereport.GetDeviceNonComplianceReportPostRequestBody();
getDeviceNonComplianceReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getDeviceNonComplianceReportPostRequestBody.setSelect(select);
getDeviceNonComplianceReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getDeviceNonComplianceReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getDeviceNonComplianceReportPostRequestBody.setOrderBy(orderBy);
getDeviceNonComplianceReportPostRequestBody.setSkip(4);
getDeviceNonComplianceReportPostRequestBody.setTop(3);
getDeviceNonComplianceReportPostRequestBody.setSessionId("Session Id value");
getDeviceNonComplianceReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getDeviceNonComplianceReport().post(getDeviceNonComplianceReportPostRequestBody);


```