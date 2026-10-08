---
title: "plannerRoster: assignSensitivityLabel"
description: "Assign a sensitivity label to a plannerRoster object."
ms.localizationpriority: medium
author: "WiRawlinWork"
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 07/11/2024
---

# plannerRoster: assignSensitivityLabel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a sensitivity label to a [plannerRoster](../resources/plannerroster.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerroster_assignsensitivitylabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerroster-assignsensitivitylabel-permissions.md)]

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
| assignmentMethod | [sensitivityLabelAssignmentMethod](../resources/sensitivitylabelassignment.md#sensitivitylabelassignmentmethod-values) | The method that is used to apply the sensitivity label to the roster. The possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
| sensitivityLabelId | String | The ID of the label that's applied to the roster. |

## Response

If successful, this method returns a `200 OK` response code and a [plannerRoster](../resources/plannerroster.md) object in the response body.

This method fails in the following situations, each with a respective response code. The **code** property in the error response indicates the specific error.

| Response code | Description | Code property value |
|:------|:-----|:-----|
| `400 Bad Request`| If the label has sublabels, it can't be applied to the roster. Only labels without sublabels can be applied. The request fails.  | `sensitivityLabelHasSublabels` |
| `403 Forbidden` | If labels are mandatory for the user and the user tries to remove the sensitivity label, the request fails. | `sensitivityLabelsAreMandatory` |
| `403 Forbidden`  | If a previously existing label assignment was applied with `sensitivityLabelAssignmentMethod.privileged` and an app attempts to overwrite the label with `sensitivityLabelAssignmentMethod.standard`, the request fails. | `existingSensitivityLabelWasAppliedWithPrivilegedMethod` |
| `404 Not Found`  | If a label can't be found or the label isn't in scope for the user, the request fails.  | `sensitivityLabelNotFound`  |

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request
The following example shows a request. 
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "assign_sensitivitylabel_to_roster_"
}
-->

```http
POST https://graph.microsoft.com/beta/planner/rosters/3e34de02-b01d-423b-b2ae-ca0ccd1fab05/assignSensitivityLabel
Content-type: application/json
If-Match: "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\""

{
    "assignmentMethod" : "standard",
    "sensitivityLabelId": "7a4d7cc1-f72b-46a3-9831-02680eaf56f9"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/assign-sensitivitylabel-to-roster--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/assign-sensitivitylabel-to-roster--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/assign-sensitivitylabel-to-roster--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/assign-sensitivitylabel-to-roster--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/assign-sensitivitylabel-to-roster--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/assign-sensitivitylabel-to-roster--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/assign-sensitivitylabel-to-roster--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response to the updated roster.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "assign_sensitivitylabel_to_roster_",
  "@odata.type": "microsoft.graph.plannerRoster"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "6519868f-868f-6519-8f86-19658f861965",
  "assignedSensitivityLabel": {
      "assignmentMethod" : "standard",
      "sensitivityLabelId": "720b42d7-d945-46cd-81f8-8dd825d01960",
      "tenantId": "88397d78-d160-4545-a01f-cceda28d3fe3"
  }
}
```

