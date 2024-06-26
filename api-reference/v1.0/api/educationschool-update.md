---
title: "Update educationSchool"
description: "Update the properties of an educationSchool object."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# Update educationSchool

Namespace: microsoft.graph

Update the properties of an [educationSchool](../resources/educationschool.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationschool_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationschool-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /education/schools/{id}
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json          |

## Request body

In the request body, supply a JSON representation of the [educationSchool](../resources/educationschool.md) object.

The following table shows the properties that are required when you update the [educationSchool](../resources/educationschool.md).

| Property             | Type                                               | Description                                                                                                                                                           |
| :------------------- | :------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName          | String                                             | Display name of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                            |
| description          | String                                             | Description of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                             |
| externalSource       | educationExternalSource                            | Source where this organization was created from. Inherited from [educationOrganization](../resources/educationorganization.md). Possible values are: `sis`, `manual`. |
| externalSourceDetail | String                                             | The name of the external source this resources was generated from.                                                                                                    |
| principalEmail       | String                                             | Email address of the principal.                                                                                                                                       |
| principalName        | String                                             | Name of the principal.                                                                                                                                                |
| externalPrincipalId  | String                                             | ID of principal in syncing system.                                                                                                                                    |
| highestGrade         | String                                             | Highest grade taught.                                                                                                                                                 |
| lowestGrade          | String                                             | Lowest grade taught.                                                                                                                                                  |
| schoolNumber         | String                                             | School Number.                                                                                                                                                        |
| externalId           | String                                             | ID of school in syncing system.                                                                                                                                       |
| phone                | String                                             | Phone number of school.                                                                                                                                               |
| fax                  | String                                             | Fax number of school.                                                                                                                                                 |
| createdBy            | [identitySet](../resources/identityset.md)         | Entity who created the school.                                                                                                                                        |
| address              | [physicalAddress](../resources/physicaladdress.md) | Address of the school.                                                                                                                                                |

## Response

If successful, this method returns a `200 OK` response code and an updated [educationSchool](../resources/educationschool.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_educationschool"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/education/schools/{school-id}
Content-type: application/json

{
  "displayName": "Fabrikam Arts High School",
  "description": "Magnate school for the arts. Los Angeles School District"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-educationschool-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-educationschool-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-educationschool-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-educationschool-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-educationschool-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-educationschool-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-educationschool-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-educationschool-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSchool"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "10002",
  "displayName": "Fabrikam Arts High School",
  "description": "Magnate school for the arts. Los Angeles School District",
  "status": "String",
  "externalSource": "String",
  "principalEmail": "AmyR@fabrikam.com",
  "principalName": "Amy Roebuck",
  "externalPrincipalId": "14007",
  "highestGrade": "12",
  "lowestGrade": "9",
  "schoolNumber": "10002",
  "address": {
    "city": "Los Angeles",
    "countryOrRegion": "United States",
    "postalCode": "98055",
    "state": "CA",
    "street": "12345 Main St."
  },
  "externalId": "10002",
  "phone": "+1 (253) 555-0102"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update educationschool",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
