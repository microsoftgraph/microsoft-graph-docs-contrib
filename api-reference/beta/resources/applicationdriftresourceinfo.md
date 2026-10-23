---
title: "applicationDriftResourceInfo resource type"
description: "Represents resource information for an application in an access drift context."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# applicationDriftResourceInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents resource information for an application in an access drift context.

This object can be returned in the **resource** property of [accessDriftSummary](../resources/accessdriftsummary.md) and [accessDriftDetail](../resources/accessdriftdetail.md).

Inherits from [driftResourceInfo](../resources/driftresourceinfo.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogIdentifier|String|The identifier of the entitlement management catalog that contains the resource. Inherited from [driftResourceInfo](../resources/driftresourceinfo.md).|
|catalogName|String|The display name of the entitlement management catalog. Inherited from [driftResourceInfo](../resources/driftresourceinfo.md).|
|displayName|String|The display name of the application. Inherited from [driftResourceInfo](../resources/driftresourceinfo.md).|
|identifier|String|The unique identifier of the application. Inherited from [driftResourceInfo](../resources/driftresourceinfo.md).|
|type|[accessDriftResourceType](../resources/enums.md#accessdriftresourcetype-values)|The type of governed resource. Inherited from [driftResourceInfo](../resources/driftresourceinfo.md). The possible values are: `application`, `group`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationDriftResourceInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationDriftResourceInfo",
  "catalogName": "String",
  "identifier": "String",
  "displayName": "String",
  "type": "String",
  "catalogIdentifier": "String"
}
```
