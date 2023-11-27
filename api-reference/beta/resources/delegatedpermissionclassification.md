---
title: "delegatedPermissionClassification resource type"
description: "Specifies the classification of a delegated permission."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "psignoret"
---

# delegatedPermissionClassification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the classification of a delegated permission.

Delegated permission classifications can be used in combination with user consent settings to choose which permissions a user is allowed to consent to. See [Configure how end-users consent to applications](/azure/active-directory/manage-apps/configure-user-consent) to learn more about permission classifications.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| id | String | A unique identifier for the **delegatedPermissionClassification** Key. Not nullable. Read-only. |
| classification | permissionClassificationType | The classification value. Possible values: `low`, `medium` (preview), `high` (preview). Doesn't support `$filter`. |
| permissionId | Guid | The unique identifier (**id**) for the delegated permission listed in the **publishedPermissionScopes** collection of the [servicePrincipal](servicePrincipal.md). Required on create. Doesn't support `$filter`. |
| permissionName | String | The claim value (**value**) for the delegated permission listed in the **publishedPermissionScopes** collection of the [servicePrincipal](servicePrincipal.md). Doesn't support `$filter`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.delegatedPermissionClassification"
}-->

```json
{
  "id": "string (identifier)",
  "classification": "low",
  "permissionId": "string",
  "permissionName": "string"
}
```

