---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Task baseTask = new Task();
baseTask.textBody = "String";
baseTask.bodyLastModifiedDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");
baseTask.completedDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
baseTask.dueDateTime = dueDateTime;
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
baseTask.startDateTime = startDateTime;
baseTask.importance = Importance.LOW;
PatternedRecurrence recurrence = new PatternedRecurrence();
baseTask.recurrence = recurrence;
baseTask.displayName = "String";
baseTask.status = TaskStatus_v2.NOT_STARTED;
TaskViewpoint viewpoint = new TaskViewpoint();
baseTask.viewpoint = viewpoint;

graphClient.me().tasks().lists("AQMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNi").tasks()
	.buildRequest()
	.post(baseTask);

```