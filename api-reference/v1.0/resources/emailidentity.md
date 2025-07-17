---
title: "emailIdentity resource type"
description: "Represents the email identity of a user."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# emailIdentity resource type

Namespace: microsoft.graph

Represents the email identity of a user.

Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user. Inherited from [identity](../resources/identity.md).|
|email|String|Email address of the user.|
|id|String|The unique identifier for the user. Inherited from [identity](../resources/identity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailIdentity",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)"
}
```
