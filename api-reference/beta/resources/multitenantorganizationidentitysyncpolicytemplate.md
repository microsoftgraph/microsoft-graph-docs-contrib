---
title: "multiTenantOrganizationIdentitySyncPolicyTemplate resource type"
description: "Defines an optional cross-tenant access policy template with user synchronization settings for a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationIdentitySyncPolicyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an optional cross-tenant access policy template with user synchronization settings for multi-tenant organization tenants. For more information, see [crossTenantIdentitySyncPolicyPartner resource type](crosstenantidentitysyncpolicypartner.md).

Each tenant has its own template. This template is applied when a tenant joins a multi-tenant organization and when other tenants join a multi-tenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationIdentitySyncPolicyTemplate](../api/multitenantorganizationidentitysyncpolicytemplate-get.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Get the user synchronization settings of the template.|
|[Update multiTenantOrganizationIdentitySyncPolicyTemplate](../api/multitenantorganizationidentitysyncpolicytemplate-update.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Update the user synchronization settings of the template.|
|[resetToDefaultSettings](../api/multitenantorganizationidentitysyncpolicytemplate-resettodefaultsettings.md)|None|Reset the user synchronization settings of the template to the default values.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Defines whether users can be synchronized from the partner tenant. Key.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.multiTenantOrganizationIdentitySyncPolicyTemplate",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationIdentitySyncPolicyTemplate",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

