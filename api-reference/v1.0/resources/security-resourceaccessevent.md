---
title: "resourceAccessEvent resource type"
description: "Represents a resource access attempt made by a user account."
author: "harelDamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/17/2025
---

# userAccount resource type

Namespace: microsoft.graph.security

Represents a resource access attempt made by a [user account](./security-useraccount.md).

## Properties

| Property          | Type   | Description                                                            |
|:------------------|:-------|:-----------------------------------------------------------------------|
| accessDateTime        | DateTime | The time of the access event. |
| accountId      | String | The identifier of the user account.                                |
| ipAddress       | String | Ip address of the resource.   |
| resourceIdentifier     | String | The protocol and host name pairs describing the connection.    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.userAccount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userAccount",
  "accountId": "String",
  "resourceIdentifier": "String",
  "ipAddress": "String",
  "accessDateTime": "String (timestamp)",
}
```
