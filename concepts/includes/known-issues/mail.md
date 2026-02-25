---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Delta calls to the messages API using immutable Ids

<!-- {
  "ms.author": "abhda",
  "ms.reviewer": ""
} -->

When you make `/delta` calls to the messages API using immutable Ids in some cases (for example when a message moves out of a folder and is then moved back in), you might miss some change notifications.

### The comment parameter for creating a draft does not become part of the message body

<!-- {
  "ms.author": "abhda",
  "ms.reviewer": ""
} -->

The **comment** parameter for creating a reply or forward draft ([createReply](/graph/api/message-createreply), [createReplyAll](/graph/api/message-createreplyall), [createForward](/graph/api/message-createforward)) does not become part of the body of the resultant message draft.
