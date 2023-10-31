---
title: "gcpServiceAccount resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpServiceAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [gcpIdentity](../resources/gcpidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpServiceAccounts](../api/gcpserviceaccount-list.md)|[gcpServiceAccount](../resources/gcpserviceaccount.md) collection|Get a list of the [gcpServiceAccount](../resources/gcpserviceaccount.md) objects and their properties.|
|[Get gcpServiceAccount](../api/gcpserviceaccount-get.md)|[gcpServiceAccount](../resources/gcpserviceaccount.md)|Read the properties and relationships of a [gcpServiceAccount](../resources/gcpserviceaccount.md) object.|
|[Update gcpServiceAccount](../api/gcpserviceaccount-update.md)|[gcpServiceAccount](../resources/gcpserviceaccount.md)|Update the properties of a [gcpServiceAccount](../resources/gcpserviceaccount.md) object.|
|[Delete gcpServiceAccount](../api/gcpserviceaccount-delete.md)|None|Delete a [gcpServiceAccount](../resources/gcpserviceaccount.md) object.|
|[List authorizationSystem](../api/gcpserviceaccount-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/gcpserviceaccount-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/gcpserviceaccount-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpServiceAccount",
  "baseType": "microsoft.graph.gcpIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpServiceAccount",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

