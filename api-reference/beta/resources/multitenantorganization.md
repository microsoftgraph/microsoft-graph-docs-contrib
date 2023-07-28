---
title: "multiTenantOrganization resource type"
description: "Defines an organization with more than one instance of Azure Active Directory (Azure AD)."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an organization with more than one instance of Azure Active Directory (Azure AD). A multi-tenant organization enables multiple tenants to collaborate like a single entity.

There can only be one multi-tenant organization per active tenant. It is not possible to be part of multiple multi-tenant organizations.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create multiTenantOrganization](../api/tenantrelationship-put-multitenantorganization.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Create a new multi-tenant organization.|
|[Get multiTenantOrganization](../api/multitenantorganization-get.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Get properties of the multi-tenant organization.|
|[Update multiTenantOrganization](../api/multitenantorganization-update.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Update the properties of a multi-tenant organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date when multi-tenant organization was created. Read-only.|
|description|String|Description of the multi-tenant organization.|
|displayName|String|Display name of the multi-tenant organization.|
|id|String|Tenant-specific object ID for the multi-tenant organization object. It is automatically generated when a multi-tenant organization object is created and stored in the local tenant. This ID is tenant-specific and does not match the object IDs of the same multi-tenant organization in other tenants. Read-only. Inherited from [entity](../resources/entity.md).|
|state|multiTenantOrganizationState|State of the multi-tenant organization. The possible values are: `active`, `inactive`, `unknownFutureValue`. `active` indicates the multi-tenant organization is created. `inactive` indicates the multi-tenant organization is not created. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|joinRequest|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Defines the status of a tenant joining a multi-tenant organization.|
|tenants|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Defines tenants added to a multi-tenant organization.|

## JSON representation
The following is a JSON representation of the resource.
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
  "description": "String"
}
```

