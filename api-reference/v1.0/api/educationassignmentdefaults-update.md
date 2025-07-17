---
title: "Update educationAssignmentDefaults"
description: "Update the properties of an educationAssignmentDefaults object."
author: "sharad-sharma-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Update educationAssignmentDefaults
Namespace: microsoft.graph

Update the properties of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.

Only teachers can update these settings.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignmentdefaults_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentdefaults-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /education/classes/{id}/assignmentDefaults
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|addedStudentAction|educationAddedStudentAction| Class-level default actions for students added after the assignment publication date. Possible values are: `none`, `assignIfOpen`. The default value is `none`.|
|addToCalendarAction|educationAddToCalendarOptions|Optional field to control the **assignment** behavior  for adding **assignments** to students' and teachers' calendars when the **assignment** is published. The possible values are: `none`, `studentsAndPublisher`, `studentsAndTeamOwners`, `unknownFutureValue`, `studentsOnly`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `studentsOnly`. Optional.|
|dueTime|TimeOfDay| Class-level default value for due time field. Default value is `23:59:00`|
|notificationChannelUrl|String| Default Teams channel to send notifications related to the assignment. Default value is `null`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_educationassignmentdefaults"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentDefaults
Content-Type: application/json

{
  "addedStudentAction": "assignIfOpen",
  "notificationChannelUrl": "https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationassignmentdefaults-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-educationassignmentdefaults-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationassignmentdefaults-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationassignmentdefaults-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationassignmentdefaults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationassignmentdefaults-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationassignmentdefaults-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-educationassignmentdefaults-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentDefaults"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "addedStudentAction": "assignIfOpen",
  "dueTime": "String",
  "notificationChannelUrl": "https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')"
}
```

## Related content

* [Specify the default channel for education assignment notifications](/graph/education-build-notificationchannelurl)
