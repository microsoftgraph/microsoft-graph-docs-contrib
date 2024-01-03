---
title: "awsPolicy resource type"
description: "Represents an AWS policy in an AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AWS policy in an AWS authorization system. An AWS policy is an object in AWS that defines the permissions of the associated entity or resource. When a principal, such as a user, makes a request, the policies and their associated permissions determine whether the request is allowed or denied.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsPolicies](../api/awsauthorizationsystem-list-policies.md)|[awsPolicy](../resources/awspolicy.md) collection|List all [awsPolicy](../resources/awspolicy.md) objects and their properties for a specific AWS authorization system.|
|[Get awsPolicy](../api/awspolicy-get.md)|[awsPolicy](../resources/awspolicy.md)|Read the properties and relationships of a single [awsPolicy](../resources/awspolicy.md) object in an AWS authorization system.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|awsPolicyType|awsPolicyType|The type of the AWS policy. The possible values are: `system`, `custom`, `unknownFutureValue`. Read-only. Supports `$filter` and (`eq`).|
|displayName|String|The display name for the AWS policy. Read-only. Supports `$filter` and (`eq`,`contains`).|
|externalId|String|The base64 encoded identifier for the AWS policy as defined by AWS. Read-only. Alternate key. Supports `$filter` and `eq`.|
|id|String|The unique encoded identifier for the AWS policy. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsPolicy",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "awsPolicyType": "String"
}
```

