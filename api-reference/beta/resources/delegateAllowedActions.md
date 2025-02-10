---
title: "delegateAllowedActions resource type"
description: "Complex type that represents the allowed actions for a delegate and delegator."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# resourceReference resource type

Namespace: microsoft.graph

Complex type containing properties of [officeGraphInsights](officegraphinsights.md).

## Properties

| Property      | Type      | Description  |
| ------------- |-----------| -------------|
| **makeCalls**                     |Boolean| Determines if the delegator/delegate allows making calls on their behalf. |
| **receiveCalls**                  |Boolean| Determines if the delegator/delegate allows receiving calls on their behalf. |
| **manageCallAndDelegateSettings** |Boolean| Determines if the delegator/delegate allows managing call and delegation settings. |
| **pickUpHeldCalls**               |Boolean| Determines if the delegator/delegate allows picking up held calls. |
| **joinActiveCalls**               |Boolean| Determines if the delegator/delegate allows joining active calls. |


## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|delegationSettings|[delegation settings](../resources/delegationSettings.md)| Provides the settings for call delegation.|


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
