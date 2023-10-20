---
title: "userIdentity type"
description: "Represents a Microsoft Entra user identity for a reviewer of an access review."
ms.localizationpriority: medium
author: "jyothig123"
ms.prod: "governance"
doc_type: resourcePageType
---

# userIdentity type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of an Azure AD audit log, the resource represents the user information that initiated or was affected by an audit activity. In the context of [callRecords](callrecords-callrecord.md), this resource is used to reflect the identity of a [participant](callrecords-participant.md) or [organizer](callrecords-organizer.md) in a call.

This type inherits from the [identity](identity.md) resource.

## Properties

| Property          | Type   | Description                                                                            |
|:------------------|:-------|:---------------------------------------------------------------------------------------|
| displayName       | String | The identity's display name. This might not always be available or up-to-date. |
| id                | String | Unique identifier for the identity. Nullable.                                                   |
| ipAddress         | String | Indicates the client IP address used by user performing the activity (audit log only). |
| userPrincipalName | String | The userPrincipalName attribute of the user.                                           |

> **Note:** In some cases, the unique identifier might not be available. In this case, the **displayName** property for the identity will be returned, but the **id** property will be missing from the resource.

## JSON representation

Here's a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
"displayName", "thumbnails"
  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "string",
  "id": "string",
  "userPrincipalName": "String",
  "ipAddress": "string"
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
