---
title: "awsIdentityAccessManagementKeyUsageFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsIdentityAccessManagementKeyUsageFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsIdentityAccessManagementKeyUsageFindings](../api/awsidentityaccessmanagementkeyusagefinding-list.md)|[awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) collection|Get a list of the [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects and their properties.|
|[Get awsIdentityAccessManagementKeyUsageFinding](../api/awsidentityaccessmanagementkeyusagefinding-get.md)|[awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md)|Read the properties and relationships of an [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) object.|
|[Update awsIdentityAccessManagementKeyUsageFinding](../api/awsidentityaccessmanagementkeyusagefinding-update.md)|[awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md)|Update the properties of an [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) object.|
|[Delete awsIdentityAccessManagementKeyUsageFinding](../api/awsidentityaccessmanagementkeyusagefinding-delete.md)|None|Delete an [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) object.|
|[aggregatedSummary](../api/awsidentityaccessmanagementkeyusagefinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIamKeySummary](../resources/permissionsanalyticsaggregatediamkeysummary.md)|**TODO: Add Description**|

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
  "@odata.type": "microsoft.graph.awsIdentityAccessManagementKeyUsageFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsIdentityAccessManagementKeyUsageFinding",
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

