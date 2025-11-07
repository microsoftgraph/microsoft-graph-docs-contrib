---
title: "Add defaultGradingScheme"
description: "Add the default educationGradingScheme to an educationAssignmentSettings object."
author: "GatadiMegha"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 09/19/2025
---

# Add defaultGradingScheme

Namespace: microsoft.graph

Add the default [educationGradingScheme](../resources/educationgradingscheme.md) to an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "educationassignmentsettings_put_defaultgradingscheme"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentsettings-put-defaultgradingscheme-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /education/classes/{educationClassId}/assignmentSettings/defaultGradingScheme/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a structure with the OData ID of the existing [educationGradingScheme](../resources/educationgradingscheme.md) to add to this assignment.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "set_defaultGradingScheme_using_put"
}
-->
``` http
PUT https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/defaultGradingScheme/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingSchemes/69911dea-bc5c-406a-8743-81d06225a3a1"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/set-defaultgradingscheme-using-put-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true  
}
-->

``` http
HTTP/1.1 204 No Content
```
