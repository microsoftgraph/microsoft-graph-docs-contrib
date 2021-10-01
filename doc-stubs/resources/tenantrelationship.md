---
title: "tenantRelationship resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tenantRelationship resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenantRelationship](../api/tenantrelationship-get.md)|[tenantRelationship](../resources/tenantrelationship.md)|Read the properties and relationships of a [tenantRelationship](../resources/tenantrelationship.md) object.|
|[Update tenantRelationship](../api/tenantrelationship-update.md)|[tenantRelationship](../resources/tenantrelationship.md)|Update the properties of a [tenantRelationship](../resources/tenantrelationship.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedTenants|[managedTenant](../resources/managedtenant.md)|**TODO: Add Description**|
|multiTenantCollaboration|[multiTenantCollaboration](../resources/multitenantcollaboration.md)|**TODO: Add Description**|
|multiTenantCollaborationAdmissions|[multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) collection|**TODO: Add Description**|

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

