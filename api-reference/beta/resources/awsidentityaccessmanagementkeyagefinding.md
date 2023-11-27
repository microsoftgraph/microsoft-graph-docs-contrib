---
title: "awsIdentityAccessManagementKeyAgeFinding resource type"
description: "View the age of AWS IAM Access Keys."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsIdentityAccessManagementKeyAgeFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View the age of AWS IAM Access Keys.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsIdentityAccessManagementKeyAgeFinding objects](../api/awsidentityaccessmanagementkeyagefinding-list.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) collection|Get a list of the [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) objects and their properties.|
|[Get awsIdentityAccessManagementKeyAgeFinding](../api/awsidentityaccessmanagementkeyagefinding-get.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)|Read the properties and relationships of an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object.|
|[Get aggregatedSummary](../api/awsidentityaccessmanagementkeyagefinding-aggregatedSummary.md)|[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)|Return the total number of an[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)and the total number in a specified authorization system.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`.|
|status|iamStatus|Status of the Iam Access Key. The possible values are: `active`, `inactive`, `disabled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessKey|[awsAccessKey](../resources/awsaccesskey.md)|Represents the Aws access key in an authorization system. Note, because of a limit in our current data model, we do not have all of the standard identity information for the access key's owner.|

## JSON representation
The following JSON representation shows the resource type.
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

