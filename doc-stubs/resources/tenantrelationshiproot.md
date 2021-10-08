---
title: "tenantRelationshipRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tenantRelationshipRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenantRelationshipRoot](../api/tenantrelationshiproot-get.md)|[tenantRelationshipRoot](../resources/tenantrelationshiproot.md)|Read the properties and relationships of a [tenantRelationshipRoot](../resources/tenantrelationshiproot.md) object.|
|[Update tenantRelationshipRoot](../api/tenantrelationshiproot-update.md)|[tenantRelationshipRoot](../resources/tenantrelationshiproot.md)|Update the properties of a [tenantRelationshipRoot](../resources/tenantrelationshiproot.md) object.|
|[List multiTenantCollaboration](../api/tenantrelationshiproot-list-multitenantcollaboration.md)|[multiTenantCollaboration](../resources/multitenantcollaboration.md) collection|Get the multiTenantCollaboration resources from the multiTenantCollaboration navigation property.|
|[Create multiTenantCollaboration](../api/tenantrelationshiproot-post-multitenantcollaboration.md)|[multiTenantCollaboration](../resources/multitenantcollaboration.md)|Create a new multiTenantCollaboration object.|
|[List multiTenantCollaborationAdmissions](../api/tenantrelationshiproot-list-multitenantcollaborationadmissions.md)|[multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) collection|Get the multiTenantCollaborationAdmission resources from the multiTenantCollaborationAdmissions navigation property.|
|[Create multiTenantCollaborationAdmission](../api/tenantrelationshiproot-post-multitenantcollaborationadmissions.md)|[multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md)|Create a new multiTenantCollaborationAdmission object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|multiTenantCollaboration|[multiTenantCollaboration](../resources/multitenantcollaboration.md)|**TODO: Add Description**|
|multiTenantCollaborationAdmissions|[multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationshipRoot"
}
```

