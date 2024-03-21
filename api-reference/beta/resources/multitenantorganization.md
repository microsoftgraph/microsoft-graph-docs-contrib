---
title: "multiTenantOrganization resource type"
description: "Defines an organization with more than one instance of Microsoft Entra ID."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an organization with more than one instance of Microsoft Entra ID. A multitenant organization enables multiple tenants to collaborate like a single entity.

There can only be one multitenant organization per active tenant. It is not possible to be part of multiple multitenant organizations.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create multiTenantOrganization](../api/tenantrelationship-put-multitenantorganization.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Create a new multitenant organization.|
|[Get multiTenantOrganization](../api/multitenantorganization-get.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Get properties of the multitenant organization.|
|[Update multiTenantOrganization](../api/multitenantorganization-update.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Update the properties of a multitenant organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date when multitenant organization was created. Read-only.|
|description|String|Description of the multitenant organization.|
|displayName|String|Display name of the multitenant organization.|
|id|String|Tenant-specific object ID for the multitenant organization object. It is automatically generated when a multitenant organization object is created and stored in the local tenant. This ID is tenant-specific and doesn't match the object IDs of the same multitenant organization in other tenants. Read-only. Inherited from [entity](../resources/entity.md).|
|state|multiTenantOrganizationState|State of the multitenant organization. The possible values are: `active`, `inactive`, `unknownFutureValue`. `active` indicates the multitenant organization is created. `inactive` indicates the multitenant organization isn't created. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|joinRequest|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Defines the status of a tenant joining a multitenant organization.|
|tenants|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Defines tenants added to a multitenant organization.|

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.multiTenantOrganization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantOrganization",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "state": "String"
}
```
