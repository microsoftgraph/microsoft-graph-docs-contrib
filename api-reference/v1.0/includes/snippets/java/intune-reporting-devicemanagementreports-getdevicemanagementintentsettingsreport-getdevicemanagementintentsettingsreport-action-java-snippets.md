---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getdevicemanagementintentsettingsreport.GetDeviceManagementIntentSettingsReportPostRequestBody getDeviceManagementIntentSettingsReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getdevicemanagementintentsettingsreport.GetDeviceManagementIntentSettingsReportPostRequestBody();
getDeviceManagementIntentSettingsReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getDeviceManagementIntentSettingsReportPostRequestBody.setSelect(select);
getDeviceManagementIntentSettingsReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getDeviceManagementIntentSettingsReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getDeviceManagementIntentSettingsReportPostRequestBody.setOrderBy(orderBy);
getDeviceManagementIntentSettingsReportPostRequestBody.setSkip(4);
getDeviceManagementIntentSettingsReportPostRequestBody.setTop(3);
getDeviceManagementIntentSettingsReportPostRequestBody.setSessionId("Session Id value");
getDeviceManagementIntentSettingsReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getDeviceManagementIntentSettingsReport().post(getDeviceManagementIntentSettingsReportPostRequestBody);


```