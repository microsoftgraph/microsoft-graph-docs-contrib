---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEventType retentionEventType = new RetentionEventType();
retentionEventType.displayName = "String";
retentionEventType.description = "String";
IdentitySet createdBy = new IdentitySet();
retentionEventType.createdBy = createdBy;

graphClient.security().triggerTypes().retentionEventTypes()
	.buildRequest()
	.post(retentionEventType);

```