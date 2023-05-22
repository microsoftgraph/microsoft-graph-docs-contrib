---
title: "multiTenantOrganization resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
|description|String|Description of multi-tenant organization.|
|displayName|String|Display name of multi-tenant organization. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|joinRequest|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Details of a tenant's join request to multi-tenant organization.|
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
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String"
}
```

