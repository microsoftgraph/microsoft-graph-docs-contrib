---
title: "tenantRelationship resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: resourcePageType
---

# tenantRelationship resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantRelationships](../api/tenantrelationship-list.md)|[tenantRelationship](../resources/tenantrelationship.md) collection|Get a list of the [tenantRelationship](../resources/tenantrelationship.md) objects and their properties.|
|[Get tenantRelationship](../api/tenantrelationship-get.md)|[tenantRelationship](../resources/tenantrelationship.md)|Read the properties and relationships of a [tenantRelationship](../resources/tenantrelationship.md) object.|
|[Update tenantRelationship](../api/tenantrelationship-update.md)|[tenantRelationship](../resources/tenantrelationship.md)|Update the properties of a [tenantRelationship](../resources/tenantrelationship.md) object.|
|[Delete tenantRelationship](../api/tenantrelationship-delete.md)|None|Deletes a [tenantRelationship](../resources/tenantrelationship.md) object.|
|[List granularAdminCustomers](../api/tenantrelationship-list-granularadmincustomers.md)|[granularAdminCustomer](../resources/granularadmincustomer.md) collection|Get the granularAdminCustomer resources from the granularAdminCustomers navigation property.|
|[Create granularAdminCustomer](../api/tenantrelationship-post-granularadmincustomers.md)|[granularAdminCustomer](../resources/granularadmincustomer.md)|Create a new granularAdminCustomer object.|
|[List granularAdminRelationships](../api/tenantrelationship-list-granularadminrelationships.md)|[granularAdminRelationship](../resources/granularadminrelationship.md) collection|Get the granularAdminRelationship resources from the granularAdminRelationships navigation property.|
|[Create granularAdminRelationship](../api/tenantrelationship-post-granularadminrelationships.md)|[granularAdminRelationship](../resources/granularadminrelationship.md)|Create a new granularAdminRelationship object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|granularAdminCustomers|[granularAdminCustomer](../resources/granularadmincustomer.md) collection|**TODO: Add Description**|
|granularAdminRelationships|[granularAdminRelationship](../resources/granularadminrelationship.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationship",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationship"
}
```

