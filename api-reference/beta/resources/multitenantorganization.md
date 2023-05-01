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
|[List multiTenantOrganizations](../api/tenantrelationship-list-multitenantorganization.md)|[multiTenantOrganization](../resources/multitenantorganization.md) collection|Get a list of the [multiTenantOrganization](../resources/multitenantorganization.md) objects and their properties.|
|[Create multiTenantOrganization](../api/tenantrelationship-post-multitenantorganization.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Create a new [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[Get multiTenantOrganization](../api/multitenantorganization-get.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Read the properties and relationships of a [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[Update multiTenantOrganization](../api/multitenantorganization-update.md)|[multiTenantOrganization](../resources/multitenantorganization.md)|Update the properties of a [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[Delete multiTenantOrganization](../api/tenantrelationship-delete-multitenantorganization.md)|None|Delete a [multiTenantOrganization](../resources/multitenantorganization.md) object.|
|[List multiTenantOrganizationJoinRequestRecord](../api/multitenantorganization-list-joinrequest.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) collection|Get the multiTenantOrganizationJoinRequestRecord resources from the joinRequest navigation property.|
|[Create multiTenantOrganizationJoinRequestRecord](../api/multitenantorganization-post-joinrequest.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Create a new multiTenantOrganizationJoinRequestRecord object.|
|[List multiTenantOrganizationMember](../api/multitenantorganization-list-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Get the multiTenantOrganizationMember resources from the myTenant navigation property.|
|[Add multiTenantOrganizationMember](../api/multitenantorganization-post-mytenant.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Add myTenant by posting to the myTenant collection.|
|[Remove multiTenantOrganizationMember](../api/multitenantorganization-delete-mytenant.md)|None|Remove a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.|
|[List tenants](../api/multitenantorganization-list-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|Get the multiTenantOrganizationMember resources from the tenants navigation property.|
|[Create multiTenantOrganizationMember](../api/multitenantorganization-post-tenants.md)|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|Create a new multiTenantOrganizationMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|joinRequest|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|**TODO: Add Description**|
|myTenant|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md)|**TODO: Add Description**|
|tenants|[multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) collection|**TODO: Add Description**|

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

