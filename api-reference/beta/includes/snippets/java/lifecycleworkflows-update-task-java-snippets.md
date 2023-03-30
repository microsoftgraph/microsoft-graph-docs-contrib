---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Task task = new Task();
task.description = "Add user to selected groups";
task.displayName = "Update marketing day 1 add users to Group set up";

graphClient.identitygovernance().lifecycleWorkflows().workflows("8696088c-1aef-4f65-afe9-acd55343e327").tasks("eb0b8bc2-7756-4429-8ce8-b9f09063cf54")
	.buildRequest()
	.patch(task);

```