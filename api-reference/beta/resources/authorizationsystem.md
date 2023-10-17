---
title: "authorizationSystem resource type"
description: "Represents an onboarded AWS account, Azure subscription, or GCP project that Entra Permissions Management will collect and analyze permissions and actions on."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an onboarded AWS account, Azure subscription, or GCP project that Entra Permissions Management (EPM) will collect and analyze permissions and actions on.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystems](../api/externalconnectors-external-list-authorizationsystems.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get a list of the [authorizationSystem](../resources/authorizationsystem.md) objects and their properties.|
|[Get authorizationSystem](../api/authorizationsystem-get.md)|[authorizationSystem](../resources/authorizationsystem.md)|Read the properties and relationships of an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemId|String|Authorization System Id onboarded to a tenant in EPM from a customer cloud environment.|
|authorizationSystemName|String|Name of the authorization system detected after a collection.|
|authorizationSystemType|String|Authorization System Type of this authorizationSystem.|
|id|String|Unique Id of the Authorization System within EPM. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|EPM Authorization System Data Collection related information.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

