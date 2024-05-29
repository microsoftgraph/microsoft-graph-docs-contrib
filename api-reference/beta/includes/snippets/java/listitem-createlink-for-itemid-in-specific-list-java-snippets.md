---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.sites.item.lists.item.items.item.createlink.CreateLinkPostRequestBody createLinkPostRequestBody = new com.microsoft.graph.beta.sites.item.lists.item.items.item.createlink.CreateLinkPostRequestBody();
createLinkPostRequestBody.setType("view");
createLinkPostRequestBody.setScope("anonymous");
createLinkPostRequestBody.setPassword("String");
LinkedList<DriveRecipient> recipients = new LinkedList<DriveRecipient>();
DriveRecipient driveRecipient = new DriveRecipient();
driveRecipient.setOdataType("microsoft.graph.driveRecipient");
recipients.add(driveRecipient);
createLinkPostRequestBody.setRecipients(recipients);
createLinkPostRequestBody.setSendNotification(true);
createLinkPostRequestBody.setRetainInheritedPermissions(false);
var result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().byListItemId("{listItem-id}").createLink().post(createLinkPostRequestBody);


```