---
title: "userIdentity type"
description: "Represents a Microsoft Entra user identity for a reviewer of an access review."
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# userIdentity type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of a Microsoft Entra audit log, this resource represents the user information that initiated or was affected by an audit activity. In the context of [callRecords](callrecords-callrecord.md), this resource represents the identity of a [participant](callrecords-participant.md) or [organizer](callrecords-organizer.md) in a call.

Inherits from [identity](identity.md).

## Properties

| Property          | Type   | Description                                                                            |
|:------------------|:-------|:---------------------------------------------------------------------------------------|
| displayName       | String | The display name of the identity. This might not always be available or up-to-date. |
| id                | String | Unique identifier for the identity. Nullable. When the unique identifier is unavailable, the **displayName** property is provided for the identity, but the **id** property isn't included in the response. |
| ipAddress         | String | Indicates the client IP address associated with the user performing the activity (audit log only). |
| userPrincipalName | String | The **userPrincipalName** attribute of the user.                                           |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
"displayName", "thumbnails"
  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "ipAddress": "String",
  "userPrincipalName": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "userIdentity type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
