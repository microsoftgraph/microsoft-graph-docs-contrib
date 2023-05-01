---
title: "policyTemplate resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# policyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyTemplates](../api/crosstenantaccesspolicy-list-templates.md)|[policyTemplate](../resources/policytemplate.md) collection|Get a list of the [policyTemplate](../resources/policytemplate.md) objects and their properties.|
|[Create policyTemplate](../api/crosstenantaccesspolicy-post-templates.md)|[policyTemplate](../resources/policytemplate.md)|Create a new [policyTemplate](../resources/policytemplate.md) object.|
|[Get policyTemplate](../api/policytemplate-get.md)|[policyTemplate](../resources/policytemplate.md)|Read the properties and relationships of a [policyTemplate](../resources/policytemplate.md) object.|
|[Update policyTemplate](../api/policytemplate-update.md)|[policyTemplate](../resources/policytemplate.md)|Update the properties of a [policyTemplate](../resources/policytemplate.md) object.|
|[Delete policyTemplate](../api/crosstenantaccesspolicy-delete-templates.md)|None|Delete a [policyTemplate](../resources/policytemplate.md) object.|
|[List multiTenantOrganizationIdentitySyncPolicyTemplate](../api/policytemplate-list-multitenantorganizationidentitysynchronization.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) collection|Get the multiTenantOrganizationIdentitySyncPolicyTemplate resources from the multiTenantOrganizationIdentitySynchronization navigation property.|
|[Create multiTenantOrganizationIdentitySyncPolicyTemplate](../api/policytemplate-post-multitenantorganizationidentitysynchronization.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Create a new multiTenantOrganizationIdentitySyncPolicyTemplate object.|
|[List multiTenantOrganizationPartnerConfigurationTemplate](../api/policytemplate-list-multitenantorganizationpartnerconfiguration.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) collection|Get the multiTenantOrganizationPartnerConfigurationTemplate resources from the multiTenantOrganizationPartnerConfiguration navigation property.|
|[Create multiTenantOrganizationPartnerConfigurationTemplate](../api/policytemplate-post-multitenantorganizationpartnerconfiguration.md)|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Create a new multiTenantOrganizationPartnerConfigurationTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|multiTenantOrganizationIdentitySynchronization|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|**TODO: Add Description**|
|multiTenantOrganizationPartnerConfiguration|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyTemplate",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyTemplate"
}
```

