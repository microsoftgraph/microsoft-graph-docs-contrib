---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.shares.item.permission.grant.GrantPostRequestBody grantPostRequestBody = new com.microsoft.graph.shares.item.permission.grant.GrantPostRequestBody();
LinkedList<DriveRecipient> recipients = new LinkedList<DriveRecipient>();
DriveRecipient driveRecipient = new DriveRecipient();
driveRecipient.setEmail("john@contoso.com");
recipients.add(driveRecipient);
DriveRecipient driveRecipient1 = new DriveRecipient();
driveRecipient1.setEmail("ryan@external.com");
recipients.add(driveRecipient1);
grantPostRequestBody.setRecipients(recipients);
LinkedList<String> roles = new LinkedList<String>();
roles.add("read");
grantPostRequestBody.setRoles(roles);
var result = graphClient.shares().bySharedDriveItemId("{sharedDriveItem-id}").permission().grant().post(grantPostRequestBody);


```