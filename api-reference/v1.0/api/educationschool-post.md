---
title: "Create educationSchool"
description: "Create a new educationSchool object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Create educationSchool

Namespace: microsoft.graph

Create a new [educationSchool](../resources/educationschool.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationschool_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationschool-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /education/schools
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [educationSchool](../resources/educationschool.md) object.

The following table lists the properties that are required when you create the [educationSchool](../resources/educationschool.md).

| Property             | Type                                               | Description                                                                                                                                                          |
| :------------------- | :------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName          | String                                             | Display name of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                           |
| description          | String                                             | Description of the school. Inherited from [educationOrganization](../resources/educationorganization.md).                                                            |
| externalSource       | educationExternalSource                            | Source where this organization was created from. Inherited from [educationOrganization](../resources/educationorganization.md). Possible values are: `sis`, `manual. |
| externalSourceDetail | String                                             | The name of the external source this resources was generated from.                                                                                                   |
| principalEmail       | String                                             | Email address of the principal.                                                                                                                                      |
| principalName        | String                                             | Name of the principal.                                                                                                                                               |
| externalPrincipalId  | String                                             | ID of principal in syncing system.                                                                                                                                   |
| highestGrade         | String                                             | Highest grade taught.                                                                                                                                                |
| lowestGrade          | String                                             | Lowest grade taught.                                                                                                                                                 |
| schoolNumber         | String                                             | School Number.                                                                                                                                                       |
| externalId           | String                                             | ID of school in syncing system.                                                                                                                                      |
| phone                | String                                             | Phone number of school.                                                                                                                                              |
| fax                  | String                                             | Fax number of school.                                                                                                                                                |
| createdBy            | [identitySet](../resources/identityset.md)         | Entity who created the school.                                                                                                                                       |
| address              | [physicalAddress](../resources/physicaladdress.md) | Address of the school.                                                                                                                                               |

## Response

If successful, this method returns a `201 Created` response code and an [educationSchool](../resources/educationschool.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationschool_from_"
}
-->

```http
POST https://graph.microsoft.com/v1.0/education/schools
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationSchool",
  "displayName": "String",
  "description": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "principalEmail": "String",
  "principalName": "String",
  "externalPrincipalId": "String",
  "lowestGrade": "String",
  "highestGrade": "String",
  "schoolNumber": "String",
  "externalId": "String",
  "phone": "String",
  "fax": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationschool-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationschool-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationschool-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationschool-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationschool-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationschool-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationschool-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationschool-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSchool"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationSchool",
  "id": "1c23c12e-c12e-1c23-2ec1-231c2ec1231c",
  "displayName": "String",
  "description": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "principalEmail": "String",
  "principalName": "String",
  "externalPrincipalId": "String",
  "lowestGrade": "String",
  "highestGrade": "String",
  "schoolNumber": "String",
  "externalId": "String",
  "phone": "String",
  "fax": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  }
}
```
