---
title: "gcpIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).

The following resources inherit from this resource type:

- [gcpServiceAccount](gcpserviceaccount.md)
- [gcpUser](gcpuser.md)
- [gcpCloudFunction](gcpcloudfunction.md)
- [gcpGroup](gcpgroup.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpIdentities](../api/gcpidentity-list.md)|[gcpIdentity](../resources/gcpidentity.md) collection|Get a list of the [gcpIdentity](../resources/gcpidentity.md) objects and their properties.|
|[Get gcpIdentity](../api/gcpidentity-get.md)|[gcpIdentity](../resources/gcpidentity.md)|Read the properties and relationships of a [gcpIdentity](../resources/gcpidentity.md) object.|
|[Update gcpIdentity](../api/gcpidentity-update.md)|[gcpIdentity](../resources/gcpidentity.md)|Update the properties of a [gcpIdentity](../resources/gcpidentity.md) object.|
|[Delete gcpIdentity](../api/gcpidentity-delete.md)|None|Delete a [gcpIdentity](../resources/gcpidentity.md) object.|
|[List authorizationSystem](../api/gcpidentity-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/gcpidentity-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/gcpidentity-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

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
  "@odata.type": "microsoft.graph.gcpIdentity",
  "baseType": "microsoft.graph.authorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

