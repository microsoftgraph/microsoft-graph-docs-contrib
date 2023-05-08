---
title: "impactedResource resource type"
description: "Represents an Azure AD resource in your tenant that's associated with an Azure AD recommendation."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: resourcePageType
---

# impactedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD resource in your tenant that's associated with an Azure AD [recommendation](../resources/recommendation.md).

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List impactedResources](../api/recommendation-list-impactedresources.md)|[impactedResource](../resources/impactedresource.md) collection|Get the [impactedResource](../resources/impactedresource.md) resources from the impactedResources navigation property.|
|[Get impactedResource](../api/impactedresource-get.md)|[impactedResource](../resources/impactedresource.md)|Read the properties and relationships of an [impactedResource](../resources/impactedresource.md) object.|
|[Postpone](../api/impactedresource-postpone.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `postponed` to a specified date and time.|
|[Dismiss](../api/impactedresource-dismiss.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `dismissed`.|
|[Complete](../api/impactedresource-complete.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `completedByUser`.|
|[Reactivate](../api/impactedresource-reactivate.md)|[impactedResource](../resources/impactedresource.md)|Mark the status of an [impactedResource](../resources/impactedresource.md) object as `active`.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedDateTime|DateTimeOffset|The date and time when the [impactedResource](../resources/impactedresource.md) object was initially associated with the [recommendation](../resources/recommendation.md).|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|Additional information unique to the [impactedResource](../resources/impactedresource.md) to help contextualize the [recommendation](../resources/recommendation.md).|
|apiUrl|String|The URL link to the corresponding Azure AD resource.|
|displayName|String|Friendly name of the Azure AD resource.|
|id|String|A unique identifier of the impacted Azure AD resource.|
|lastModifiedBy|String|Name of the user or service that last updated the **status**.|
|lastModifiedDateTime|String|The date and time when the **status** was last updated.|
|owner|String|The user responsible for maintaining the resource.|
|portalUrl|String|The URL link to the corresponding Azure AD portal page of the resource.|
|postponeUntilDateTime|DateTimeOffset|The future date and time when the **status** of a postponed [impactedResource](../resources/impactedresource.md) will be `active` again.|
|rank|Int32|Indicates the importance of the resource. A resource with a rank equal to 1 is of the highest importance.|
|recommendationId|String|The unique identifier of the [recommendation](../resources/recommendation.md) that the resource is associated with.|
|resourceType|String|Indicates the type of Azure AD resource. Examples include `user`, `application`.|
|status|recommendationStatus|Indicates whether a resource needs to be addressed. The possible values are: `active`, `completedBySystem`, `completedByUser`, `dismissed`, `postponed`, `unknownFutureValue`. By default, a recommendation's **status** is set to `active` when the recommendation is first generated. **Status** is set to `completedBySystem` when our service detects that a resource which was once active no longer applies.|
|subjectId|String|The related unique identifier, depending on the **resourceType**. For example, this property is set to the `applicationId` if the **resourceType** is an `application`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

