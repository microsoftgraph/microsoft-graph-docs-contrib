---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcBulkAction cloudPcBulkAction = new CloudPcBulkAction();
cloudPcBulkAction.setOdataType("#microsoft.graph.cloudPcBulkAction");
cloudPcBulkAction.setDisplayName("Bulk Power Off by Andy");
LinkedList<String> cloudPcIds = new LinkedList<String>();
cloudPcIds.add("d6e0b8ee-8836-4b8d-b038-6130a97a3a9d");
cloudPcIds.add("85994912-197b-4927-b569-447bd81350ec");
cloudPcBulkAction.setCloudPcIds(cloudPcIds);
cloudPcBulkAction.setScheduledDuringMaintenanceWindow(true);
CloudPcBulkAction result = graphClient.deviceManagement().virtualEndpoint().bulkActions().post(cloudPcBulkAction);


```