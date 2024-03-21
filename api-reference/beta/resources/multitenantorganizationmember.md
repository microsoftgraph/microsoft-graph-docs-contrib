---
title: "multiTenantOrganizationMember resource type"
description: "Defines a tenant added to a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a tenant added to a multitenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List multiTenantOrganizationMembers](../api/multitenantorganization-list-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|List the tenants and their properties in the multitenant organization.|
|[Add multiTenantOrganizationMember](../api/multitenantorganization-post-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Add a tenant to a multitenant organization.|
|[Get multiTenantOrganizationMember](../api/multitenantorganizationmember-get.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Get a tenant and its properties in the multitenant organization.|
|[Update multiTenantOrganizationMember](../api/multitenantorganizationmember-update.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Update the properties of a tenant in a multitenant organization.|
|[Remove multiTenantOrganizationMember](../api/multitenantorganization-delete-tenants.md)|None|Remove a tenant from a multitenant organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|Tenant ID of the tenant that added the tenant to the multitenant organization. Read-only.|
|addedDateTime|DateTimeOffset|Date and time when the tenant was added to the multitenant organization. Read-only.|
|displayName|String|Display name of the tenant added to the multitenant organization.|
|joinedDateTime|DateTimeOffset|Date and time when the tenant joined the multitenant organization. Read-only.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multitenant organization. The possible values are: `owner`, `member` (default), `unknownFutureValue`. Tenants with the owner role can manage the multitenant organization but tenants with the member role can only participate in a multitenant organization. There can be multiple tenants with the owner role in a multitenant organization. |
|state|multiTenantOrganizationMemberState|State of the tenant in the multitenant organization. The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`. Tenants in the pending state must [join the multitenant organization](../api/multitenantorganizationjoinrequestrecord-update.md) to participate in the multitenant organization. Tenants in the active state can participate in the multitenant organization. Tenants in the removed state are in the process of being removed from the multitenant organization. Read-only.|
|tenantId|String|Tenant ID of the Microsoft Entra tenant added to the multitenant organization. Set at the time tenant is added.<br><br>Supports `$filter`. Key.|
|transitionDetails|[multiTenantOrganizationMemberTransitionDetails](../resources/multitenantorganizationmembertransitiondetails.md)|Details of the processing status for a tenant in a multitenant organization. Read-only. Nullable.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.multiTenantOrganizationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganizationMember",
  "tenantId": "String (identifier)",
  "displayName": "String",
  "addedDateTime": "String (timestamp)",
  "joinedDateTime": "String (timestamp)",
  "addedByTenantId": "String",
  "role": "String",
  "state": "String",
  "transitionDetails": {
    "@odata.type": "microsoft.graph.multiTenantOrganizationMemberTransitionDetails"
  }
}
```
