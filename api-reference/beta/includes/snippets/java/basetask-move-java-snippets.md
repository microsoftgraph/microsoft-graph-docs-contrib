---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String destinationTaskListId = "AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQqFxG";

graphClient.me().tasks().lists("AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt").tasks("AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT")
	.move(BaseTaskMoveParameterSet
		.newBuilder()
		.withDestinationTaskListId(destinationTaskListId)
		.build())
	.buildRequest()
	.post();

```