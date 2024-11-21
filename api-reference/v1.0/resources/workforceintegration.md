---
title: "workforceIntegration resource type"
description: "An instance of a workforce integration with shifts."
ms.localizationpriority: medium
ms.date: 11/21/2024
author: "victorcheng"
ms.subservice: "teams"
doc_type: "resourcePageType"
---

# workforceIntegration resource type

Namespace: microsoft.graph

An instance of a workforce integration with shifts.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/workforceintegration-post.md) | [workforceIntegration](workforceintegration.md) | Create a new **workforceIntegration** object.|
| [List](../api/workforceintegration-list.md) | [workforceIntegration](workforceintegration.md) collection | Get the list of **workforceIntegration** objects associated with this schedule.|
| [Get](../api/workforceintegration-get.md) | [workforceIntegration](workforceintegration.md) | Read the properties and relationships of a **workforceIntegration** object. |
| [Update](../api/workforceintegration-update.md) | [workforceIntegration](workforceintegration.md) | Update a **workforceIntegration** object. |
| [Delete](../api/workforceintegration-delete.md) | None | Delete a **workforceIntegration** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|apiVersion|Int32|API version for the call back URL. Start with 1.|
|createdDateTime|DateTimeOffset|Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|displayName|String|Name of the workforce integration.|
|eligibilityFilteringEnabledEntities|eligibilityFilteringEnabledEntities| Support to view eligibility-filtered results. Possible values are: `none`, `swapRequest`, `offerShiftRequest`, `unknownFutureValue`, `timeOffReason`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `timeOffReason`.|
|encryption|[workforceIntegrationEncryption](workforceintegrationencryption.md)|The workforce integration encryption resource.|
|isActive|Boolean|Indicates whether this workforce integration is currently active and available.|
|supportedEntities|workforceIntegrationSupportedEntities | The Shifts entities supported for synchronous change notifications. Shifts will make a call back to the url provided on client changes on those entities added here. By default, no entities are supported for change notifications. Possible values are: `none`, `shift`, `swapRequest`, `userShiftPreferences`, `openShift`, `openShiftRequest`, `offerShiftRequest`, `unknownFutureValue`, `timeOffReason`, `timeOff`, `timeOffRequest`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `timeOffReason` , `timeOff` , `timeOffRequest`.|
|url|String| Workforce Integration URL for callbacks from the Shifts service.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workforceIntegration"
}-->

``` json
{
  "@odata.type": "#microsoft.graph.workforceIntegration",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "displayName": "String",
  "apiVersion": "Integer",
  "encryption": {
    "@odata.type": "microsoft.graph.workforceIntegrationEncryption"
  },
  "isActive": "Boolean",
  "url": "String",
  "supportedEntities": "String",
  "eligibilityFilteringEnabledEntities": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workforceIntegration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

