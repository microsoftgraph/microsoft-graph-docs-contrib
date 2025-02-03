---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getactionstatusreports.GetActionStatusReportsPostRequestBody getActionStatusReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getactionstatusreports.GetActionStatusReportsPostRequestBody();
getActionStatusReportsPostRequestBody.setFilter("ActionState eq 'failed'");
LinkedList<String> select = new LinkedList<String>();
select.add("Id");
select.add("CloudPcDeviceDisplayName");
select.add("BulkActionId");
select.add("BulkActionDisplayName");
select.add("CloudPcId");
select.add("InitiatedByUserPrincipalName");
select.add("DeviceOwnerUserPrincipalName");
select.add("Action");
select.add("ActionState");
select.add("RequestDateTime");
select.add("LastUpdatedDateTime");
select.add("ActionParameters");
getActionStatusReportsPostRequestBody.setSelect(select);
getActionStatusReportsPostRequestBody.setSkip(0);
getActionStatusReportsPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().getActionStatusReports().post(getActionStatusReportsPostRequestBody);


```