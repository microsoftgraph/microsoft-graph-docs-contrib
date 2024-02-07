---
title: "Update personCertification"
description: "Update the properties of an personCertification object."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.prod: "people"
doc_type: apiPageType
---

# Update personCertification
Namespace: microsoft.graph

Update the properties of a [personCertification](../resources/personcertification.md) object from a user's [profile](../resources/profile.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "personcertification_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/personcertification-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/profile/certifications/{id}
PATCH /users/{id | userPrincipalName}/profile/certifications/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|certificationId  |String      |The referenceable identifier for the certification. |
|description      |String      |Description of the certification.                   |
|displayName      |String      |Title of the certification.                         |
|endDate          |Date        |The date that the certification expires.            |
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|issuedDate       |Date        |The date that the certification was issued.         |
|issuingAuthority |String      |Authority which granted the certification.          |
|issuingCompany   |String      |Authority which granted the certification.          |
|startDate        |Date        |The date that the certification became valid.       |
|thumbnailUrl     |String      |URL referencing a thumbnail of the certification.   |
|webUrl           |String      |URL referencing the certification.                  |

## Response

If successful, this method returns a `200 OK` response code and an updated [personCertification](../resources/personcertification.md) object in the response body.

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_personcertification"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/users/{userId}/profile/certifications/{id}
Content-Type: application/json

{
  "issuingAuthority": "International Academy of Marketing Excellence",
  "issuingCompany": "International Academy of Marketing Excellence"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-personcertification-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-personcertification-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-personcertification-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-personcertification-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-personcertification-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-personcertification-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-personcertification-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-personcertification-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.personCertification"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "0fb4c1e3-c1e3-0fb4-e3c1-b40fe3c1b40f",
  "allowedAudiences": "organization",
  "inference": null,
  "createdDateTime": "2020-07-06T06:34:12.2294868Z",
  "createdBy": {
    "application": null,
    "device": null,
    "user": {
      "displayName": "Innocenty Popov",
      "id": "db789417-4ccb-41d1-a0a9-47b01a09ea49"
    }
  },
  "lastModifiedDateTime": "2020-07-06T06:34:12.2294868Z",
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "user": {
      "displayName": "Innocenty Popov",
      "id": "db789417-4ccb-41d1-a0a9-47b01a09ea49"
    }
  },
  "source": null,
  "certificationId": "KB-1235466333663322",
  "description": "Blackbelt in Marketing - Brand Management",
  "displayName": "Marketing Blackbelt - Brand Management",
  "endDate": "Date",
  "issuedDate": "Date",
  "issuingAuthority": "International Academy of Marketing Excellence",
  "issuingCompany": "International Academy of Marketing Excellence",
  "startDate": "Date",
  "thumbnailUrl": "https://iame.io/dfhdfdfd334.jpg",
  "webUrl": "https://www.iame.io/blackbelt"
}
```


