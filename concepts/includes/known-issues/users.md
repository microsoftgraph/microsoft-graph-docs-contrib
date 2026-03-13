---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### APIs that export online meeting artifacts might return transcript URLs that don't contain any content

<!-- {
  "ms.author": "sanjayra",
  "ms.reviewer": ""
} -->

The [getAllTranscripts](/graph/api/onlinemeeting-getalltranscripts) API might return transcript content URLs for some meetings that don't have any transcribed words. Calls to the content URL for those meetings will return an error.

#### Workaround

Verify that the meeting has been transcribed and if there's valid content. If there is, report it for further investigation. Otherwise, ignore the content URL.

### showInAddressList property is out of sync with Microsoft Exchange

<!-- {
  "ms.author": "lucaspol",
  "ms.reviewer": ""
} -->

When querying users through Microsoft Graph, the **showInAddressList** property may not indicate the same status shown in Microsoft Exchange. We recommend you manage this functionality directly with Microsoft Exchange through the Microsoft 365 admin center and not to use this property in Microsoft Graph.

### Access to a user's profile photo is limited

<!-- {
  "ms.author": "kbelling",
  "ms.reviewer": ""
} -->

Reading and updating a user's profile photo is only possible if the user has a mailbox. Failure to read or update a photo, in this case, results in the following error:

```json
{
  "error": {
    "code": "ErrorNonExistentMailbox",
    "message": "The SMTP address has no mailbox associated with it."
  }
}
```

Any photos that may have been previously stored using the **thumbnailPhoto** property (using the Azure AD Graph API (currently in its retirement cycle) or through AD Connect synchronization) are no longer accessible through the Microsoft Graph **photo** property of the [user](/graph/api/resources/user) resource.

Managing users' photos through the [profilePhoto](/graph/api/resources/profilephoto) resource of the Microsoft Graph API is currently not supported in Azure AD B2C tenants.
