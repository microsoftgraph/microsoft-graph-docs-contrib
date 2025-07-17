---
title: "delegatedAdminCustomer resource type"
description: "Represents a customer who has a delegated admin relationship with a Microsoft partner."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
ms.date: 07/22/2024
---

# delegatedAdminCustomer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra organization that is a customer of a Microsoft partner and has a delegated admin relationship with the Microsoft partner. This object is automatically created by the system when at least one delegated admin relationship exists between the partner and customer and is deleted when no more active relationships exist.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantrelationship-list-delegatedadmincustomers.md)|[delegatedAdminCustomer](delegatedadmincustomer.md) collection|Get a list of the **delegatedAdminCustomer** objects and their properties.|
|[Get](../api/delegatedadmincustomer-get.md)|[delegatedAdminCustomer](delegatedadmincustomer.md)|Read the properties and relationships of a **delegatedAdminCustomer** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The Microsoft Entra ID display name of the customer tenant. Read-only. Supports `$orderby`. |
|id|String|The Microsoft Entra ID-assigned unique identifier of the customer. Read-only. Inherited from [entity](../resources/entity.md).|
|tenantId|String|The Microsoft Entra ID-assigned tenant ID of the customer. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|serviceManagementDetails|[delegatedAdminServiceManagementDetail](delegatedadminservicemanagementdetail.md) collection|Contains the management details of a service in the customer tenant that's managed by delegated administration.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminCustomer",
  "baseType": "microsoft.graph.entity",
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
