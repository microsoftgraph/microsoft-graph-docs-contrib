---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "view";

String scope = "anonymous";

String password = "String";

LinkedList<DriveRecipient> recipientsList = new LinkedList<DriveRecipient>();
DriveRecipient recipients = new DriveRecipient();

recipientsList.add(recipients);

Boolean sendNotification = true;

Boolean retainInheritedPermissions = false;

graphClient.sites("{siteId}").lists("{listId}").items("{itemId}")
	.createLink(ListItemCreateLinkParameterSet
		.newBuilder()
		.withType(type)
		.withScope(scope)
		.withExpirationDateTime(null)
		.withPassword(password)
		.withRecipients(recipientsList)
		.withRetainInheritedPermissions(retainInheritedPermissions)
		.withSendNotification(sendNotification)
		.build())
	.buildRequest()
	.post();

```