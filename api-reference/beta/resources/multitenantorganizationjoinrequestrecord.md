---
title: "multiTenantOrganizationJoinRequestRecord resource type"
description: "Defines the status of a tenant joining a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the status of a tenant joining a multi-tenant organization. Before a tenant added to a multi-tenant organization can participate in the multi-tenant organization the administrator of the tenant must join the multi-tenant organization.

A multi-tenant organization can have a maximum of 100,000 internal users per active tenant. This limit is applied at the time a pending tenant joins an multi-tenant organization.

Cross-tenant access partner configurations and identity synchronization policies are required between all tenant pairs in a multi-tenant organization. Partner configurations and synchronization policies are auto generated, if needed, at the time pending tenants join a multi-tenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-get.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Get the status of a tenant joining a multi-tenant organization.|
|[Update multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-update.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Join a multi-tenant organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|Tenant ID of the tenant that added a tenant to the multi-tenant organization. Required. Read-only.|
|memberState|multiTenantOrganizationMemberState|State of the tenant in the multi-tenant organization. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Tenants in the pending state must join the multi-tenant organization by their administrator to participate in the multi-tenant organization. Tenants in the active state can participate in the multi-tenant organization. Tenants in the removed state are in the process of being removed from the multi-tenant organization. Read-only.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multi-tenant organization. The possible values are: `owner`, `member` (default), `unknownFutureValue`. Tenants with the owner role can manage the multi-tenant organization. There can be multiple tenants with the owner role in a multi-tenant organization. Tenants with the member role can participate in a multi-tenant organization.|
|transitionDetails|[multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|Details of the processing status for a tenant joining a multi-tenant organization. Read-only.|

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

