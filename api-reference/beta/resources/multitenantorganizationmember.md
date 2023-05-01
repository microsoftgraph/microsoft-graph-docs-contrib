---
title: "multiTenantOrganizationMember resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
|addedByTenantId|String|**TODO: Add Description**|
|addedDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|joinedDateTime|DateTimeOffset|**TODO: Add Description**|
|role|multiTenantOrganizationMemberRole|**TODO: Add Description**.The possible values are: `owner`, `member`, `unknownFutureValue`.|
|state|multiTenantOrganizationMemberState|**TODO: Add Description**.The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description**|
|transitionDetails|[multiTenantOrganizationMemberTransitionDetails](../resources/multitenantorganizationmembertransitiondetails.md)|**TODO: Add Description**|

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

