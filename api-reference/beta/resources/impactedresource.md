---
title: "impactedResource resource type"
description: "Represents a Microsoft Entra resource in your tenant that's associated with a Microsoft Entra recommendation."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# impactedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra resource in your tenant that's associated with a Microsoft Entra ID [recommendation](../resources/recommendation.md).

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/recommendation-list-impactedresources.md)|[impactedResource](../resources/impactedresource.md) collection|Get the [impactedResource](../resources/impactedresource.md) resources from the impactedResources navigation property.|
|[Get](../api/impactedresource-get.md)|[impactedResource](../resources/impactedresource.md)|Read the properties and relationships of an [impactedResource](../resources/impactedresource.md) object.|
|[Postpone](../api/impactedresource-postpone.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `postponed` to a specified date and time.|
|[Dismiss](../api/impactedresource-dismiss.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `dismissed`.|
|[Complete](../api/impactedresource-complete.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `completedByUser`.|
|[Reactivate](../api/impactedresource-reactivate.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `active`.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedDateTime|DateTimeOffset|The date and time when the [impactedResource](../resources/impactedresource.md) object was initially associated with the [recommendation](../resources/recommendation.md).|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|Additional information unique to the [impactedResource](../resources/impactedresource.md) to help contextualize the [recommendation](../resources/recommendation.md).|
|apiUrl|String|The URL link to the corresponding Microsoft Entra resource.|
|displayName|String|Friendly name of the Microsoft Entra resource.|
|id|String|A unique identifier of the impacted Microsoft Entra resource.|
|lastModifiedBy|String|Name of the user or service that last updated the **status**.|
|lastModifiedDateTime|String|The date and time when the **status** was last updated.|
|owner|String|The user responsible for maintaining the resource.|
|portalUrl|String|The URL link to the corresponding Microsoft Entra admin center page of the resource.|
|postponeUntilDateTime|DateTimeOffset|The future date and time when the **status** of a postponed [impactedResource](../resources/impactedresource.md) will be `active` again.|
|rank|Int32|Indicates the importance of the resource. A resource with a rank equal to 1 is of the highest importance.|
|recommendationId|String|The unique identifier of the [recommendation](../resources/recommendation.md) that the resource is associated with.|
|resourceType|String|Indicates the type of Microsoft Entra resource. Examples include `user`, `application`.|
|status|recommendationStatus|Indicates whether a resource needs to be addressed. The possible values are: `active`, `completedBySystem`, `completedByUser`, `dismissed`, `postponed`, `unknownFutureValue`, `riskAccepted`, `thirdParty`, `planned`, `alternateMitigation`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `riskAccepted` , `thirdParty` , `planned` , `alternateMitigation`. By default, a recommendation's **status** is set to `active` when the recommendation is first generated. **Status** is set to `completedBySystem` when our service detects that a resource which was once active no longer applies.|
|subjectId|String|The related unique identifier, depending on the **resourceType**. For example, this property is set to the `applicationId` if the **resourceType** is an `application`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.impactedResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.impactedResource",
  "id": "String (identifier)",
  "subjectId": "String",
  "recommendationId": "String",
  "addedDateTime": "String (timestamp)",
  "portalUrl": "String",
  "apiUrl": "String",
  "displayName": "String",
  "resourceType": "String",
  "owner": "String",
  "rank": "Integer",
  "status": "String",
  "additionalDetails": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "lastModifiedBy": "String",
  "lastModifiedDateTime": "String",
  "postponeUntilDateTime": "String (timestamp)"
}
```
