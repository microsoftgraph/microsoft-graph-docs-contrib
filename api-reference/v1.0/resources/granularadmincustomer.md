---
title: "granularAdminCustomer resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: resourcePageType
---

# granularAdminCustomer resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List granularAdminCustomers](../api/granularadmincustomer-list.md)|[granularAdminCustomer](../resources/granularadmincustomer.md) collection|Get a list of the [granularAdminCustomer](../resources/granularadmincustomer.md) objects and their properties.|
|[Create granularAdminCustomer](../api/tenantrelationship-post-granularadmincustomers.md)|[granularAdminCustomer](../resources/granularadmincustomer.md)|Create a new [granularAdminCustomer](../resources/granularadmincustomer.md) object.|
|[Get granularAdminCustomer](../api/granularadmincustomer-get.md)|[granularAdminCustomer](../resources/granularadmincustomer.md)|Read the properties and relationships of a [granularAdminCustomer](../resources/granularadmincustomer.md) object.|
|[Update granularAdminCustomer](../api/granularadmincustomer-update.md)|[granularAdminCustomer](../resources/granularadmincustomer.md)|Update the properties of a [granularAdminCustomer](../resources/granularadmincustomer.md) object.|
|[Delete granularAdminCustomer](../api/granularadmincustomer-delete.md)|None|Deletes a [granularAdminCustomer](../resources/granularadmincustomer.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularAdminCustomer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularAdminCustomer",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String"
}
```

