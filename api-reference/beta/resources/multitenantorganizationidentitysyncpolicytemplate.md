---
title: "multiTenantOrganizationIdentitySyncPolicyTemplate resource type"
description: "Defines an optional cross-tenant access policy template with user synchronization settings for multitenant organization tenants."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationIdentitySyncPolicyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an optional cross-tenant access policy template with user synchronization settings for multitenant organization tenants. Each tenant has its own template. For more information, see [crossTenantIdentitySyncPolicyPartner resource type](crosstenantidentitysyncpolicypartner.md).

* If your tenant is joining a multitenant organization, the template is applicable to the user synchronization settings for all multitenant organization tenants.
* If another tenant joins your multitenant organization, the template is applicable only to the user synchronization settings of the newly joined multitenant organization tenant.

Whether the template is applied to the user synchronization settings of relevant tenants is configurable with the `templateApplicationLevel` property.

* If the template is configured to apply, it is only applied to user synchronization properties where the corresponding template property has a non-null value.

In its default and unconfigured state, where all template properties (other than `templateApplicationLevel`) are null, the template has no effect on user synchronization settings.

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
|templateApplicationLevel|templateApplicationLevel|Specifies whether the template will be applied to user synchronization settings of certain tenants. The possible values are: `none`, `newPartners`, `existingPartners`, `unknownFutureValue`. You can also specify multiple values like `newPartners,existingPartners` (default). `none` indicates the template isn't applied to any new or existing partner tenants. `newPartners` indicates the template is applied to new partner tenants. `existingPartners` indicates the template is applied to existing partner tenants, those who already had partner-specific user synchronization settings in place.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Defines whether users can be synchronized from the partner tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

