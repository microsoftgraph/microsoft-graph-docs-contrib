---
title: "delegatedAdminCustomer resource type"
description: "Represents a delegated admin customer."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminCustomer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a delegated admin customer. This object is created by the system when at least one delegated admin relationship exists between the partner and customer and is deleted when no more relationships exist.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminCustomers](../api/tenantrelationship-list-delegatedadmincustomers.md)|[delegatedAdminCustomer](delegatedadmincustomer.md) collection|Get a list of the **delegatedAdminCustomer** objects and their properties.|
|[Get delegatedAdminCustomer](../api/delegatedadmincustomer-get.md)|[delegatedAdminCustomer](delegatedadmincustomer.md)|Read the properties and relationships of a **delegatedAdminCustomer** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the delegated admin customer organization. This is set by the system and cannot be set by the caller.|
|id|String|The unique identifier of the delegated admin customer. This is set by the system and cannot be set by the caller.|
|tenantId|String|The tenant ID of the delegated admin customer. Must be a valid tenant ID as in AAD. This is set by the system and cannot be set by the caller.|

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
  "id": "4fdbff88-9d6b-42e0-9713-45c922ba8001",
  "tenantId": "4fdbff88-9d6b-42e0-9713-45c922ba8001",
  "displayName": "Contoso"
}
```

