---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getnoncompliantdevicesandsettingsreport.GetNoncompliantDevicesAndSettingsReportPostRequestBody getNoncompliantDevicesAndSettingsReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getnoncompliantdevicesandsettingsreport.GetNoncompliantDevicesAndSettingsReportPostRequestBody();
getNoncompliantDevicesAndSettingsReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getNoncompliantDevicesAndSettingsReportPostRequestBody.setSelect(select);
getNoncompliantDevicesAndSettingsReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getNoncompliantDevicesAndSettingsReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getNoncompliantDevicesAndSettingsReportPostRequestBody.setOrderBy(orderBy);
getNoncompliantDevicesAndSettingsReportPostRequestBody.setSkip(4);
getNoncompliantDevicesAndSettingsReportPostRequestBody.setTop(3);
getNoncompliantDevicesAndSettingsReportPostRequestBody.setSessionId("Session Id value");
getNoncompliantDevicesAndSettingsReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getNoncompliantDevicesAndSettingsReport().post(getNoncompliantDevicesAndSettingsReportPostRequestBody);


```