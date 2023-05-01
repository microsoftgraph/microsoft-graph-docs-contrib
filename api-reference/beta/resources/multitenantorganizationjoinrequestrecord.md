---
title: "multiTenantOrganizationJoinRequestRecord resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# multiTenantOrganizationJoinRequestRecord resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List multiTenantOrganizationJoinRequestRecords](../api/multitenantorganization-list-joinrequest.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) collection|Get a list of the [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) objects and their properties.|
|[Create multiTenantOrganizationJoinRequestRecord](../api/multitenantorganization-post-joinrequest.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Create a new [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|
|[Get multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-get.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Read the properties and relationships of a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|
|[Update multiTenantOrganizationJoinRequestRecord](../api/multitenantorganizationjoinrequestrecord-update.md)|[multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md)|Update the properties of a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|
|[Delete multiTenantOrganizationJoinRequestRecord](../api/multitenantorganization-delete-joinrequest.md)|None|Delete a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedByTenantId|String|**TODO: Add Description**|
|memberState|multiTenantOrganizationMemberState|**TODO: Add Description**.The possible values are: `pending`, `active`, `removed`, `unknownFutureValue`.|
|role|multiTenantOrganizationMemberRole|**TODO: Add Description**.The possible values are: `owner`, `member`, `unknownFutureValue`.|
|transitionDetails|[multiTenantOrganizationJoinRequestTransitionDetails](../resources/multitenantorganizationjoinrequesttransitiondetails.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

