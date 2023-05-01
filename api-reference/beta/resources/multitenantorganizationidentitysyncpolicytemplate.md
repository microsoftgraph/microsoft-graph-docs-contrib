---
title: "multiTenantOrganizationIdentitySyncPolicyTemplate resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationIdentitySyncPolicyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List multiTenantOrganizationIdentitySyncPolicyTemplates](../api/policytemplate-list-multitenantorganizationidentitysynchronization.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) collection|Get a list of the [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) objects and their properties.|
|[Create multiTenantOrganizationIdentitySyncPolicyTemplate](../api/policytemplate-post-multitenantorganizationidentitysynchronization.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Create a new [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.|
|[Get multiTenantOrganizationIdentitySyncPolicyTemplate](../api/multitenantorganizationidentitysyncpolicytemplate-get.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Read the properties and relationships of a [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.|
|[Update multiTenantOrganizationIdentitySyncPolicyTemplate](../api/multitenantorganizationidentitysyncpolicytemplate-update.md)|[multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md)|Update the properties of a [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.|
|[Delete multiTenantOrganizationIdentitySyncPolicyTemplate](../api/policytemplate-delete-multitenantorganizationidentitysynchronization.md)|None|Delete a [multiTenantOrganizationIdentitySyncPolicyTemplate](../resources/multitenantorganizationidentitysyncpolicytemplate.md) object.|
|[resetToDefaultSettings](../api/multitenantorganizationidentitysyncpolicytemplate-resettodefaultsettings.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|**TODO: Add Description**|

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

