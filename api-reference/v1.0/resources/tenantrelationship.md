---
title: "tenantRelationship resource type"
description: "Represent the various type of tenant relationships."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# tenantRelationship resource type

Namespace: microsoft.graph

Represent the various type of tenant relationships.

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|delegatedAdminCustomers|[delegatedAdminCustomer](../resources/delegatedadmincustomer.md) collection|The customer who has a delegated admin relationship with a Microsoft partner.|
|delegatedAdminRelationships|[delegatedAdminRelationship](../resources/delegatedadminrelationship.md) collection|The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.|

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
