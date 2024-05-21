---
title: "plannerRoster: assignSensitivityLabel"
description: "Assign a sensitivity label to a plannerRoster object."
ms.localizationpriority: medium
author: "WiRawlinWork"
ms.subservice: "planner"
doc_type: apiPageType
---

# plannerRoster: assignSensitivityLabel

Assign a sensitivity label to a [plannerRoster](../resources/plannerroster.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Tasks.ReadWrite    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Tasks.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /planner/rosters/{rosterId}/assignSensitivityLabel
```
## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|If-match: {etag}. Last known ETag value for the **plannerRoster** to be updated. Required.|

## Request body

In the request body, provide a JSON object with the following parameters.
| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
| assignmentMethod | [sensitivityLabelAssignmentMethod](../resources/sensitivitylabelassignment.md#sensitivitylabelassignmentmethod-values) | The method that is used to apply the sensitivity label to the roster. Possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
| sensitivityLabelId | String | The ID of the label that is applied to the roster. |

## Examples

### Request
The following example shows a request. 
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

### Response

If successful, this API returns the updated roster.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "assign_sensitivitylabel_to_roster_",
  "@odata.type": "microsoft.graph.plannerRoster"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "6519868f-868f-6519-8f86-19658f861965"
}
```

### See also

The method will fail in the following situations, resulting in an error (see [Errors] (https://learn.microsoft.com/en-us/graph/errors))

#### 400 Bad Request

If the label has sublabels, then it can't be applied to the roster. Only labels that have no sublabels can be applied. The request fails, and the **code** property on the error response is "SensitivityLabelHasSublabels".

#### 403 Forbidden

If labels are mandatory for the user, and the user tries to remove the sensitivity label, the request fails. The **code** property on the error response is "SensitivityLabelsAreMandatory".

If a previously existing label assignment was applied with microsoft.graph.sensitivityLabelAssignmentMethod.privileged and an app attempts to overwrite the label with microsoft.graph.sensitivityLabelAssignmentMethod.standard, the request fails. The **code** property on the error response is "ExistingSensitivityLabelWasAppliedWithPrivilegedMethod".

#### 404 Not Found

If a label can't be found (or if the label isn't in scope for the user), the request fails, and the **code** property on the error resource type is "SensitivityLabelNotFound".