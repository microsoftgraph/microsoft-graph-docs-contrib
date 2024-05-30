---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.monitoring.alertrecords.microsoftgraphdevicemanagementchangealertrecordsportalnotificationassent.ChangeAlertRecordsPortalNotificationAsSentPostRequestBody changeAlertRecordsPortalNotificationAsSentPostRequestBody = new com.microsoft.graph.beta.devicemanagement.monitoring.alertrecords.microsoftgraphdevicemanagementchangealertrecordsportalnotificationassent.ChangeAlertRecordsPortalNotificationAsSentPostRequestBody();
LinkedList<String> alertRecordIds = new LinkedList<String>();
alertRecordIds.add("1d2b92e3-539a-481f-b38a-c2c050b422ad");
alertRecordIds.add("4bf624c4-a801-4631-989c-7f1a3a0d1d83");
changeAlertRecordsPortalNotificationAsSentPostRequestBody.setAlertRecordIds(alertRecordIds);
graphClient.deviceManagement().monitoring().alertRecords().microsoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent().post(changeAlertRecordsPortalNotificationAsSentPostRequestBody);


```