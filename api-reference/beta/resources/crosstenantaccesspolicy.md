---
title: "crossTenantAccessPolicy resource type"
description: "**TODO: Add Description**"
author: "jkdouglas"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# crossTenantAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantAccessPolicies](../api/crosstenantaccesspolicy-list.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) collection|Get a list of the [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) objects and their properties.|
|[Create crossTenantAccessPolicy](../api/crosstenantaccesspolicy-create.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Create a new [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Get crossTenantAccessPolicy](../api/crosstenantaccesspolicy-get.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Read the properties and relationships of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Update crossTenantAccessPolicy](../api/crosstenantaccesspolicy-update.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Update the properties of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Delete crossTenantAccessPolicy](../api/crosstenantaccesspolicy-delete.md)|None|Deletes a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[List crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicy-list-default.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) collection|Get the crossTenantAccessPolicyConfigurationDefault resources from the default navigation property.|
|[Create crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicy-post-default.md)|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Create a new crossTenantAccessPolicyConfigurationDefault object.|
|[List partners](../api/crosstenantaccesspolicy-list-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Get the crossTenantAccessPolicyConfigurationPartner resources from the partners navigation property.|
|[Create crossTenantAccessPolicyConfigurationPartner](../api/crosstenantaccesspolicy-post-partners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Create a new crossTenantAccessPolicyConfigurationPartner object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|**TODO: Add Description** Inherited from [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|default|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|**TODO: Add Description**|
|partners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|**TODO: Add Description**|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicy",
  "baseType": "Microsoft.DirectoryServices.tenantRelationshipAccessPolicyBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "definition": [
    "String"
  ]
}
```
