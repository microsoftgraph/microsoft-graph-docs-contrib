---
title: "educationalActivity resource type"
description: "educationalActivity resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# educationalActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities.

Inherits metadata properties from [itemFacet](itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/profile-list-educationalactivities.md)|[educationalActivity](../resources/educationalactivity.md) collection|Get the educationalActivity resources from the educationalActivities navigation property.|
|[Create](../api/profile-post-educationalactivities.md)|[educationalActivity](../resources/educationalactivity.md)|Create a new educationalActivity object.|
|[Get](../api/educationalactivity-get.md)|[educationalActivity](../resources/educationalactivity.md)|Read the properties and relationships of an [educationalActivity](../resources/educationalactivity.md) object.|
|[Update](../api/educationalactivity-update.md)|[educationalActivity](../resources/educationalactivity.md)|Update the properties of an [educationalActivity](../resources/educationalactivity.md) object.|
|[Delete](../api/educationalactivity-delete.md)|None|Deletes an [educationalActivity](../resources/educationalactivity.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). The possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|completionMonthYear|Date|The month and year the user graduated or completed the activity. |
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|endMonthYear|Date|The month and year the user completed the educational activity referenced.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|institution|[institutionData](../resources/institutiondata.md)|Contains details of the institution studied at. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|program|[educationalActivityDetail](../resources/educationalactivitydetail.md)|Contains extended information about the program or course.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|startMonthYear|Date|The month and year the user commenced the activity referenced.|

## Relationships

None

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationalActivity",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationalActivity",
  "id": "String (identifier)",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSource"
  },
  "completionMonthYear": "Date",
  "endMonthYear": "Date",
  "institution": {
    "@odata.type": "microsoft.graph.institutionData"
  },
  "program": {
    "@odata.type": "microsoft.graph.educationalActivityDetail"
  },
  "startMonthYear": "Date"
}
```

