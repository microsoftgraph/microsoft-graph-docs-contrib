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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create multiTenantOrganization](../api/tenantrelationship-put-multitenantorganization.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Create a new [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[Get multiTenantOrganization](../api/multitenantorganization-get.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Read the properties and relationships of a [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[Update multiTenantOrganization](../api/multitenantorganization-update.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Update the properties of a [multiTenantOrganization](../resources/multitenantorganization.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date when multi-tenant organization was created. Read-only.|
|description|String|Description of the multi-tenant organization.|
|displayName|String|Display name of the multi-tenant organization.|
|id|String|ID of the multi-tenant organization. Automatically generated when multi-tenant organization is created. Read-only|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|joinRequest|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Details of a tenant's join request to the multi-tenant organization.|
|tenants|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Member tenants of the multi-tenant organization.|

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

