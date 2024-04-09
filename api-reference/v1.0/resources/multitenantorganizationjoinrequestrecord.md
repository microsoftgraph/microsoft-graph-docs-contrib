---
title: "multiTenantOrganizationJoinRequestRecord resource type"
description: "Defines the status of a tenant joining a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestRecord resource type

Namespace: microsoft.graph

Defines the status of a tenant joining a multitenant organization. Before a tenant added to a multitenant organization can participate in the multitenant organization, the administrator of the tenant must join the multitenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-get.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Get the status of a tenant joining a multitenant organization.|
|[Update multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-update.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Join a multitenant organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|Tenant ID of the Microsoft Entra tenant that added a tenant to the multitenant organization. To reset a failed join request, set `addedByTenantId` to `00000000-0000-0000-0000-000000000000`. Required.|
|memberState|multiTenantOrganizationMemberState|State of the tenant in the multitenant organization. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Tenants in the pending state must [join the multitenant organization](../api/multitenantorganizationjoinrequestrecord-update.md) to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multitenant organization. The possible values are: `owner`, `member` (default), `unknownFutureValue`. Tenants with the owner role can manage the multitenant organization. There can be multiple tenants with the owner role in a multitenant organization. Tenants with the member role can participate in a multitenant organization.|
|transitionDetails|[multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|Details of the processing status for a tenant joining a multitenant organization. Read-only.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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
