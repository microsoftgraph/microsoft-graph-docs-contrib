---
title: "teamworkApplicationIdentity resource type"
description: "Represents an application in Microsoft Teams."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkApplicationIdentity resource type

Namespace: microsoft.graph

Represents an **application** in Microsoft Teams. `teamworkApplicationIdentity` is used to represent bots and outgoing webhooks @mentioned in messages.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationIdentityType|teamworkApplicationIdentityType| Type of application that is referenced. The possible values are: `aadApplication`, `bot`, `tenantBot`, `office365Connector`, `outgoingWebhook`, and `unknownFutureValue`.|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the application. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkApplicationIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "applicationIdentityType": "String"
}
```

