---
title: "resourceAccessEvent resource type"
description: "Represents a resource access attempt made by a user account."
author: "harelDamti"
ms.date: 07/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# resourceAccessEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource access attempt made by a [user account](./security-useraccount.md).

## Properties

| Property          | Type   | Description                                                            |
|:------------------|:-------|:-----------------------------------------------------------------------|
| accessDateTime        | DateTimeOffset | The time of the access event. |
| accountId      | String | The identifier of the user account.                                |
| ipAddress       | String | Ip address of the resource.   |
| resourceIdentifier     | String | The protocol and host name pairs describing the connection.    |

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.resourceAccessEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.resourceAccessEvent",
  "accountId": "String",
  "resourceIdentifier": "String",
  "ipAddress": "String",
  "accessDateTime": "String (timestamp)"
}
```