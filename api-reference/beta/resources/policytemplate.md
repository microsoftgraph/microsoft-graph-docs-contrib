---
title: "policyTemplate resource type"
description: "Represents the base policy in the directory for multi-tenant organization settings."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# policyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base policy in the directory for multi-tenant organization settings.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the template. Key. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|multiTenantOrganizationIdentitySynchronization|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Defines an optional cross-tenant access policy template with user synchronization settings for a multi-tenant organization.|
|multiTenantOrganizationPartnerConfiguration|[multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md)|Defines an optional cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization.|

## JSON representation

The following JSON representation shows the resource type.
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

