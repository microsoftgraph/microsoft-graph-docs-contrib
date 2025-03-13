---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.permissions.item.revokegrants.RevokeGrantsPostRequestBody revokeGrantsPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.permissions.item.revokegrants.RevokeGrantsPostRequestBody();
LinkedList<DriveRecipient> grantees = new LinkedList<DriveRecipient>();
DriveRecipient driveRecipient = new DriveRecipient();
driveRecipient.setEmail("ryan@contoso.com");
grantees.add(driveRecipient);
revokeGrantsPostRequestBody.setGrantees(grantees);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").permissions().byPermissionId("{permission-id}").revokeGrants().post(revokeGrantsPostRequestBody);


```