---
title: "unifiedRoleManagementPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicy resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementPolicies](../api/unifiedrolemanagementpolicy-list.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|Get a list of the [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) objects and their properties.|
|[Create unifiedRoleManagementPolicy](../api/policyroot-post-rolemanagementpolicies.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Create a new [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Read the properties and relationships of an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Update the properties of an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Delete unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-delete.md)|None|Deletes an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[List effectiveRules](../api/unifiedrolemanagementpolicy-list-effectiverules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the unifiedRoleManagementPolicyRule resources from the effectiveRules navigation property.|
|[Create unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicy-post-effectiverules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Create a new unifiedRoleManagementPolicyRule object.|
|[List rules](../api/unifiedrolemanagementpolicy-list-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the unifiedRoleManagementPolicyRule resources from the rules navigation property.|
|[Create unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicy-post-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Create a new unifiedRoleManagementPolicyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isOrganizationDefault|Boolean|**TODO: Add Description**|
|lastModifiedBy|[identity](../resources/intune-identity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description**|
|scopeType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|effectiveRules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|**TODO: Add Description**|
|rules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isOrganizationDefault": "Boolean",
  "scopeId": "String",
  "scopeType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

