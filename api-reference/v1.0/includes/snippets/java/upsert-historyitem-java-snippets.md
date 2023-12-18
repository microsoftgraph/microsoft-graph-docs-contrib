---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ActivityHistoryItem activityHistoryItem = new ActivityHistoryItem();
activityHistoryItem.startedDateTime = OffsetDateTimeSerializer.deserialize("2015-02-11T20:54:04.3457274+00:00");
activityHistoryItem.userTimezone = "Africa/Casablanca";
activityHistoryItem.lastActiveDateTime = OffsetDateTimeSerializer.deserialize("2015-02-11T20:54:04.3457274+00:00");

graphClient.me().activities("{activity-id}").historyItems("{item-id}")
	.buildRequest()
	.put(activityHistoryItem);

```