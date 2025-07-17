---
title: "crossTenantAccessPolicy resource type"
description: "Cross-tenant access policy represents the base policy in the directory for cross-tenant access settings."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Policy
ms.date: 07/22/2024
---

# crossTenantAccessPolicy resource type

Namespace: microsoft.graph

Represents the base policy in the directory for cross-tenant access settings.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/crosstenantaccesspolicy-get.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Read the properties and relationships of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|
|[Update](../api/crosstenantaccesspolicy-update.md)|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|Update the properties of a [crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| displayName | String | The display name of the cross-tenant access policy. Inherited from [policyBase](../resources/policybase.md).|
| allowedCloudEndpoints | String collection | Used to specify which Microsoft clouds an organization would like to collaborate with. By default, this value is empty. Supported values for this field are: `microsoftonline.com`, `microsoftonline.us`, and `partner.microsoftonline.cn`. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|default|[crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md)|Defines the default configuration for how your organization interacts with external Microsoft Entra organizations.|
|partners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Defines partner-specific configurations for external Microsoft Entra organizations.|
|templates|[policyTemplate](../resources/policytemplate.md)|Represents the base policy in the directory for multitenant organization settings.|

## JSON representation
The following JSON representation shows the resource type.
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicy",
  "baseType": "microsoft.graph.tenantRelationshipAccessPolicyBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicy",
  "displayName": "String",
  "allowedCloudEndpoints": ["String"]
}
```
