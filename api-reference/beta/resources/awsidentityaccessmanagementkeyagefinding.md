---
title: "awsIdentityAccessManagementKeyAgeFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsIdentityAccessManagementKeyAgeFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsIdentityAccessManagementKeyAgeFindings](../api/awsidentityaccessmanagementkeyagefinding-list.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) collection|Get a list of the [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) objects and their properties.|
|[Get awsIdentityAccessManagementKeyAgeFinding](../api/awsidentityaccessmanagementkeyagefinding-get.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)|Read the properties and relationships of an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object.|
|[Update awsIdentityAccessManagementKeyAgeFinding](../api/awsidentityaccessmanagementkeyagefinding-update.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)|Update the properties of an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object.|
|[Delete awsIdentityAccessManagementKeyAgeFinding](../api/awsidentityaccessmanagementkeyagefinding-delete.md)|None|Delete an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object.|
|[aggregatedSummary](../api/awsidentityaccessmanagementkeyagefinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIamKeySummary](../resources/permissionsanalyticsaggregatediamkeysummary.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|
|status|iamStatus|**TODO: Add Description**.The possible values are: `active`, `inactive`, `disabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsIdentityAccessManagementKeyAgeFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsIdentityAccessManagementKeyAgeFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "actionSummary": {
    "@odata.type": "microsoft.graph.actionSummary"
  },
  "status": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  }
}
```

