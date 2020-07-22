---
author: "baywet"
localization_priority: Priority
ms.prod: "msgraph"
ms.topic: include
---
<!-- markdownlint-disable MD041 -->
### chatMessage

**chatMessage** subscriptions require [encryption](/graph/webhooks-with-resource-data). Subscription creation will fail if [encryptionCertificate](../resources/subscription.md) is not specified. Before creating a **chatMessage** subscription, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis). 

> **Note:** `/teams/allMessages` and `/chats/allMessages` are currently in preview. During the preview, you may use this API without fees, subject to the [Microsoft APIs Terms of Use](https://docs.microsoft.com/legal/microsoft-apis/terms-of-use?context=graph/context). However, users of apps that use the API might be required to have subscriptions to specific Microsoft 365 offerings. Upon general availability, Microsoft may require you or your customers to pay additional fees based on the amount of data accessed through the API.

### driveItem

Additional limitations apply for subscriptions on OneDrive  items. The limitations apply to creating as well as managing (getting, updating, and deleting) subscriptions.

On personal OneDrive, you can subscribe to the root folder or any subfolder in that drive. On OneDrive for Business, you can subscribe to only the root folder. Change notifications are sent for the requested types of changes on the subscribed folder, or any file, folder, or other **driveItem** instances in its hierarchy. You cannot subscribe to **drive** or **driveItem** instances that are not folders, such as individual files.

### contact, event, and message

Additional limitations apply for subscriptions on Outlook items. The limitations apply to creating as well as managing (getting, updating, and deleting) subscriptions.

- Delegated permission supports subscribing to items in folders in only the signed-in user's mailbox. That means, for example, you cannot use the delegated permission Calendars.Read to subscribe to events in another user’s mailbox.
- To subscribe to change notifications of Outlook contacts, events, or messages in _shared or delegated_ folders:

  - Use the corresponding application permission to subscribe to changes of items in a folder or mailbox of _any_ user in the tenant.
  - Do not use the Outlook sharing permissions (Contacts.Read.Shared, Calendars.Read.Shared, Mail.Read.Shared, and their read/write counterparts), as they do **not** support subscribing to change notifications on items in shared or delegated folders.

### presence

**presence** subscriptions require [encryption](/graph/webhooks-with-resource-data). Subscription creation will fail if [encryptionCertificate](../resources/subscription.md) is not specified.
