---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Error attaching large files to events

<!-- {
  "ms.author": "abhda",
  "ms.reviewer": ""
} -->

An app with delegated permissions returns `HTTP 403 Forbidden` when attempting to attach large files to an Outlook message or event that is in a shared or delegated mailbox. With delegated permissions, [createUploadSession](/graph/api/attachment-createuploadsession) succeeds only if the message or event is in the signed-in user's mailbox.
