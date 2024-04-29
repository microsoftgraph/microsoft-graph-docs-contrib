---
title: "Assign sensitivity label to planner roster"
description: "Assign a sensitivity label to the **plannerRoster** object."
ms.localizationpriority: medium
author: "WiRawlinWork"
ms.subservice: "planner"
doc_type: apiPageType
---

# Apply a [sensitivitylabelassignment](../resources/sensitivitylabelassignment.md) to a [plannerRoster](../resources/plannerroster.md) object

Rosters can be assigned sensitivity labels to further protect the roster.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Tasks.Read, Tasks.ReadWrite, Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/planner/rosters/{rosterId}/assignSensitivityLabel
```

## Response

If successful, this API returns a `204 No Content`.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "assign_sensitivitylabel_to_roster_"
}
-->

```http
POST https://graph.microsoft.com/beta/planner/rosters/{rosterId}/assignSensitivityLabel
Content-type: application/json
If-Match: "string"
{
    "assignmentMethod" : "microsoft.graph.sensitivityLabelAssignmentMethod",
    "sensitivityLabelId": "string"
}
```

### Error Conditions

#### 400 Bad Request

If the label has sublabels, then it cannot be applied to the roster. Only labels that have no sublabels can be applied.  The request fails, and the **code** property on the error response is "SensitivityLabelHasSublabels".

#### 403 Forbidden

If labels are mandatory for the user, and the user tries to remove the sensitivity label, the request fails. The **code** property on the error response is "SensitivityLabelsAreMandatory".

If a previously existing label assignment was applied with microsoft.graph.sensitivityLabelAssignmentMethod.privileged and an app attempts to overwrite the label with microsoft.graph.sensitivityLabelAssignmentMethod.standard, the request fails. The **code** property on the error response is "ExistingSensitivityLabelWasAppliedWithPrivilegedMethod".

#### 404 Not Found

If a label can't be found (or if the label is not in scope for the user), the request fails, and the **code** property on the error resource type is "SensitivityLabelNotFound".