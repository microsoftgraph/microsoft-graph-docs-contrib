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

In its default state, when the template is used to generate a previously non-existent identity synchronization policy, the newly generated identity synchronization policy is in an unconfigured state.

Similarly, in its default state, when the template is used to amend a previously existing identity synchronization policy, the previously existing identity synchronization policy remains unchanged.

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
|id|String|ID of the template. Key.|
|templateApplicationLevel|templateApplicationLevel|Specifies how the template is applied when a tenant joins a multi-tenant organization and when other tenants join a multi-tenant organization. The possible values are: `none`, `newPartners` (default), `existingPartners` (default), `unknownFutureValue`. `none` indicates the template is not applied for new or existing partners. `newPartners` indicates the template is applied for new partners. `existingPartners` indicates the template is applied for existing partners.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Defines whether users can be synchronized from the partner tenant.|

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
  "templateApplicationLevel": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

