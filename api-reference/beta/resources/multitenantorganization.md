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

Defines an organization with more than one instance of Azure Active Directory (Azure AD). A multi-tenant organization enables multiple tenants to collaborate as a single entity.

A multi-tenant organization can have a maximum of 5 active tenants, including the owner tenant. The owner tenant can add more than 5 pending tenants, but they won't be able to join the multi-tenant organization if the limit is exceeded. A multi-tenant organization can have a maximum of 100,000 internal users per active tenant. These limits are applied at the time a pending tenant joins an multi-tenant organization.

Cross-tenant access partner configurations and identity synchronization policies are required between all tenant pairs in a multi-tenant organization. Partner configurations and synchronization policies are auto generated, if needed, at the time pending tenants join a multi-tenant organization.

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

