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

Represents a resource access attempt made by a user account.

## Properties

| Property          | Type   | Description                                                            |
|:------------------|:-------|:-----------------------------------------------------------------------|
| accountId      | String | The account id of the user account.                                |
| resourceIdentifier     | String | The protocol and host name pairs describing the connection.    |
| ipAddress       | String | Ip address of the resource.   |
| accessTime        | DateTime | The time of the access event. |

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
  "accessTime": "String (timestamp)",
}
```
