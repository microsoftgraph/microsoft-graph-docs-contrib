---
title: "governanceRoleDefinition resource type"
description: "Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, Contributor, etc."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "rkarim-ms"
ROBOTS: NOINDEX
---

# governanceRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [pim-v2ResourceRoles-deprecation](../../includes/pim-v2ResourceRoles-deprecation.md)]


Represents the role definitions. For Azure resources, it can represent Azure RBAC roles, such as Owner, Reader, or Contributor.


## Methods

| Method          | Return Type    |Description|
|:---------------|:--------|:--------|
|[List](../api/governanceroledefinition-list.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) collection |List a collection of role definitions on a resource.|
|[Get](../api/governanceroledefinition-get.md) | [governanceRoleDefinition](../resources/governanceroledefinition.md) |Read properties and relationships of a role definition entity specified by ID.|

No `POST`, `PUT`, `PATCH`, `DELETE` is supported on `roleDefinitions` entity set for now.

## Properties
| Property    | Type   | Description                                                           |
|:------------|:-------|:----------------------------------------------------------------------|
| id          | String | The ID of the role definition.                                        |
| resourceId  | String | Required. The ID of the resource associated with the role definition. |
| externalId  | String | The external ID of the role definition.                               |
| displayName | String | The display name of the role definition.                              |
| templateId  | String | The unique identifier for the template.                               |

## Relationships
| Relationship | Type    |Description|
|:---------------|:--------|:----------|
|resource|[governanceResource](../resources/governanceresource.md)|Read-only. The associated resource for the role definition.|
|roleSetting|[governanceRoleSetting](../resources/governancerolesetting.md)|The associated role setting for the role definition.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceRoleDefinition"
}-->

```json
{
  "id": "String (identifier)",
  "resourceId": "String",
  "externalId": "String",
  "displayName": "String",
  "templateId":"String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceRoleDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


