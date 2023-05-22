---
title: "multiTenantOrganizationJoinRequestRecord resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-get.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Read the properties and relationships of a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|
|[Update multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-update.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Update the properties of a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|Tenant ID of the tenant that added a tenant to the multi-tenant organization. Required. Read-only.|
|memberState|multiTenantOrganizationMemberState|State of the tenant in the multi-tenant organization. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Read-only.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multi-tenant organization. The possible values are: `owner`, `member`, `unknownFutureValue`.|
|transitionDetails|[multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|Complex type that provides the status of the pending updates to tenant state. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestRecord",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationJoinRequestRecord",
  "addedByTenantId": "String",
  "memberState": "String",
  "role": "String",
  "transitionDetails": {
    "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestTransitionDetails"
  }
}
```

