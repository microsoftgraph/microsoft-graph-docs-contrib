---
title: "delegationSettings resource type"
description: "Represents the settings for a delegate and delegator."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# delegationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a [delagator or delegate](../resources/callsettings.md?#Call-delegation).

## Properties

|Property|Type|Description|
|--------------------------------------------------|-------------- |-------------|
| **id**                                           |String         |Unique identifier of the delegator/delegate. |
| **createdDateTime**                              |DateTimeOffset | Timestamp when the delegator/delegate entry was created. |
| **isActive**                                     |Boolean        | Indicates if the delegator/delegate relationship is currently active. |
| **allowedActions**                               |[Allowed actions](../resources/delegateAllowedActions.md) entity      | Represent the allowed actions by the delegator/delegate. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|callSettings|[call settings](../resources/callsettings.md)| Provides the settings for call settings.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegationSettings"
}
-->
``` json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('{user_id}')/communications/callSettings/delegators",
  "value": [
    {
      "id": "00000000-0000-0000-0000-000000000000",
      "createdDateTime": "0001-01-01T00:00:00Z",
      "isActive": true,
      "allowedActions": {
        "makeCalls": true,
        "receiveCalls": true,
        "manageCallAndDelegateSettings": true,
        "pickUpHeldCalls": true,
        "joinActiveCalls": true
      }
    }
  ]
}
```