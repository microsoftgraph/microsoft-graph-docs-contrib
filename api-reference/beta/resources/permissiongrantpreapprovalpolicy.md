---
title: "permissionGrantPreApprovalPolicy resource type"
description: "Policies that specify the conditions under which consent can be granted to a specific application."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# permissionGrantPreApprovalPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A permission grant preapproval policy is used to help administrators granularly control the conditions under which consent can be granted to a specific application.

A permission grant preapproval policy consists of a list of condition sets. An event matches a permission grant preapproval policy if it matches _at least one_ of the condition sets in the **conditions** list.
Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-permissiongrantpreapprovalpolicies.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) collection|Get a list of the [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) objects and their properties.|
|[Create](../api/policyroot-post-permissiongrantpreapprovalpolicies.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md)|Create a new [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.|
|[Get](../api/permissiongrantpreapprovalpolicy-get.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md)|Read the properties and relationships of a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.|
|[Update](../api/permissiongrantpreapprovalpolicy-update.md)|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md)|Update the properties of a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.|
|[Delete](../api/permissiongrantpreapprovalpolicy-delete.md)|None|Delete a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.|
|[List assigned to service principal](../api/serviceprincipal-list-permissiongrantpreapprovalpolicies.md)| [permissionGrantPreApprovalPolicy](permissionGrantPreApprovalPolicy.md) collection| Get permissionGrantPreApprovalPolicy assigned to a service principal.|
|[Assign to service principal](../api/serviceprincipal-post-permissiongrantpreapprovalpolicies.md)| [permissionGrantPreApprovalPolicy](permissionGrantPreApprovalPolicy.md) collection| Assign a permissionGrantPreApprovalPolicy to a service principal.|
|[Unassign from service principal](../api/serviceprincipal-delete-permissiongrantpreapprovalpolicies.md)| [permissionGrantPreApprovalPolicy](permissionGrantPreApprovalPolicy.md) collection| Remove a permissionGrantPreApprovalPolicy from a service principal.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[preApprovalDetail](../resources/preapprovaldetail.md) collection|A list of condition sets describing the conditions under which the permission to grant consent for the app has been preapproved.|
|deletedDateTime|DateTimeOffset|Null. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier for the permission grant preapproval policy. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantPreApprovalPolicy",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionGrantPreApprovalPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "conditions": [
    {
      "@odata.type": "microsoft.graph.preApprovalDetail"
    }
  ]
}
```
