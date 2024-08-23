---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.invite.InvitePostRequestBody invitePostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.invite.InvitePostRequestBody();
LinkedList<DriveRecipient> recipients = new LinkedList<DriveRecipient>();
DriveRecipient driveRecipient = new DriveRecipient();
driveRecipient.setEmail("robin@contoso.org");
recipients.add(driveRecipient);
invitePostRequestBody.setRecipients(recipients);
invitePostRequestBody.setMessage("Here's the file that we're collaborating on.");
invitePostRequestBody.setRequireSignIn(true);
invitePostRequestBody.setSendInvitation(true);
LinkedList<String> roles = new LinkedList<String>();
roles.add("write");
invitePostRequestBody.setRoles(roles);
invitePostRequestBody.setPassword("password123");
invitePostRequestBody.setExpirationDateTime("2018-07-15T14:00:00.000Z");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").invite().post(invitePostRequestBody);


```