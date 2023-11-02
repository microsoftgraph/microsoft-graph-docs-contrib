---
title: "awsIdentityAccessManagementKeyUsageFinding resource type"
description: "The IAM access key age represents the number of keys that have not been used in the over 90 days."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsIdentityAccessManagementKeyUsageFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The IAM access key age represents the number of keys that have not been used in the over 90 days.


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsIdentityAccessManagementKeyUsageFindings](../api/awsidentityaccessmanagementkeyusagefinding-list.md)|[awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) collection|Get a list of the [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects and their properties.|
|[Get awsIdentityAccessManagementKeyUsageFinding](../api/awsidentityaccessmanagementkeyusagefinding-get.md)|[awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md)|Read the properties and relationships of an [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity*|
|status|iamStatus|Status of the Iam Access Key.The possible values are: `active`, `inactive`, `disabled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|awsAccessKey|[graph.awsAccessKey	](../resources/awsaccesskey.md)|Represents the Aws access key in an authorization system. Note, because of a limit in our current data model, we do not have all of the standard identity information for the access key's owner|

## JSON representation
The following JSON representation shows the resource type.
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

