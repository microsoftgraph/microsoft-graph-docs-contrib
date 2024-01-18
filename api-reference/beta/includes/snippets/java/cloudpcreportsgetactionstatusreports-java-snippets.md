---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "ActionState eq 'failed'";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("Id");
selectList.add("CloudPcDeviceDisplayName");
selectList.add("BulkActionId");
selectList.add("BulkActionDisplayName");
selectList.add("CloudPcId");
selectList.add("InitiatedByUserPrincipalName");
selectList.add("DeviceOwnerUserPrincipalName");
selectList.add("Action");
selectList.add("ActionState");
selectList.add("RequestDateTime");
selectList.add("LastUpdatedDateTime");
selectList.add("ActionParameters");

int skip = 0;

int top = 50;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getActionStatusReports(CloudPcReportsGetActionStatusReportsParameterSet
		.newBuilder()
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(null)
		.withGroupBy(null)
		.withOrderBy(null)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```