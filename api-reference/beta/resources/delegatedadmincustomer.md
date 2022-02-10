---
title: "delegatedAdminCustomer resource type"
description: "Represents a Delegated Admin customer."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminCustomer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Delegated Admin customer. This object is created by the system when at least one Delegated Admin relationship exists between the partner and customer and is deleted when no more relationships exist.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminCustomers](../api/delegatedadmincustomer-list.md)|[delegatedAdminCustomer](../resources/delegatedadmincustomer.md) collection|Get a list of the [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) objects and their properties.|
|[Create delegatedAdminCustomer](../api/tenantrelationship-post-delegatedadmincustomers.md)|[delegatedAdminCustomer](../resources/delegatedadmincustomer.md)|Create a new [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) object.|
|[Get delegatedAdminCustomer](../api/delegatedadmincustomer-get.md)|[delegatedAdminCustomer](../resources/delegatedadmincustomer.md)|Read the properties and relationships of a [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) object.|
|[Update delegatedAdminCustomer](../api/delegatedadmincustomer-update.md)|[delegatedAdminCustomer](../resources/delegatedadmincustomer.md)|Update the properties of a [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) object.|
|[Delete delegatedAdminCustomer](../api/delegatedadmincustomer-delete.md)|None|Deletes a [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the delegated admin customer organization. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the delegated admin customer. This is set by the system and cannot be set by the caller.|
|tenantId|String|The tenant ID of the delegated admin customer. Must be a valid tenant ID as in AAD.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminCustomer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminCustomer",
  "id": "String (identifier)",
  "tenantId": "String",
  "displayName": "String"
}
```

