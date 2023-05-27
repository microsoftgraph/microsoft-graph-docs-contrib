---
title: "multiTenantOrganizationMember resource type"
description: "An object that represents a tenant added to a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object that represents a tenant added to a multi-tenant organization.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List multiTenantOrganizationMembers](../api/multitenantorganization-list-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Get a list of the [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) objects and their properties.|
|[Create multiTenantOrganizationMember](../api/multitenantorganization-post-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Create a new [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.|
|[Get multiTenantOrganizationMember](../api/multitenantorganizationmember-get.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Read the properties and relationships of a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.|
|[Update multiTenantOrganizationMember](../api/multitenantorganizationmember-update.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Update the properties of a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.|
|[Delete multiTenantOrganizationMember](../api/multitenantorganization-delete-tenants.md)|None|Delete a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|Tenant ID of the tenant that added the tenant to the multi-tenant organization. Read-only.|
|addedDateTime|DateTimeOffset|Date and time when the tenant was added to the multi-tenant organization. Read-only.|
|displayName|String|Display name of the tenant added to the multi-tenant organization.|
|joinedDateTime|DateTimeOffset|Date and time when the tenant joined the multi-tenant organization. Read-only.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multi-tenant organization. The possible values are: `owner`, `member`.|
|state|multiTenantOrganizationMemberState|State of the tenant in the multi-tenant organization. The possible values are: `pending`, `active`, `removed`. Read-only.|
|tenantId|String|Tenant ID of the tenant added to the multi-tenant organization. Set at the time tenant is added.|
|transitionDetails|[multiTenantOrganizationMemberTransitionDetails](../resources/multitenantorganizationmembertransitiondetails.md)|Object that provides the status of pending updates to the tenant state. Read-only.|

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

