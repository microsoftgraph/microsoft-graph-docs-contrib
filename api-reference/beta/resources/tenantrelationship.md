---
title: "tenantRelationship resource type"
description: "Represent the various type of tenant relationships."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
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
|managedTenants|[microsoft.graph.managedTenants.managedTenant](../resources/managedtenants-managedtenant.md)|The operations available to interact with the multi-tenant management platform.|

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
