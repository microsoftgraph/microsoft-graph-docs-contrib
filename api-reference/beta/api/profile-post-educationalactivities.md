---
title: "Create educationalActivity"
description: "Create a new educationalActivity."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "apiPageType"
ms.date: 06/10/2024
---

# Create educationalActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [educationalActivity](../resources/educationalactivity.md) in a user's [profile](../resources/profile.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "profile_post_educationalactivities" } -->
[!INCLUDE [permissions-table](../includes/permissions/profile-post-educationalactivities-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/profile/educationalActivities
POST /users/{id | userPrincipalName}/profile/educationalActivities
```

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply a JSON representation of an [educationalActivity](../resources/educationalactivity.md) object.

The following table shows the properties that are possible to set when creating a new [educationalActivity](../resources/educationalactivity.md) object in a user's [profile](../resources/profile.md).

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|completionMonthYear|Date|The month and year the user graduated or completed the activity. |
|endMonthYear|Date|The month and year the user completed the educational activity referenced.|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|institution|[institutionData](../resources/institutiondata.md)|Contains details of the institution studied at. |
|program|[educationalActivityDetail](../resources/educationalactivitydetail.md)|Contains extended information about the program or course.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|startMonthYear|Date|The month and year the user commenced the activity referenced.|

## Response

If successful, this method returns a `201 Created` response code and a new [educationalActivity](../resources/educationalactivity.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationalactivity_from_profile"
}-->

```http
POST https://graph.microsoft.com/beta/me/profile/educationalActivities
Content-type: application/json

{
  "completionMonthYear": "Date",
  "endMonthYear": "Date",
  "institution": {
    "description": null,
    "displayName": "Colorado State University",
    "location": {
      "type": "business",
      "postOfficeBox": null,
      "street": "12000 E Prospect Rd",
      "city": "Fort Collins",
      "state": "Colorado",
      "countryOrRegion": "USA",
      "postalCode": "80525"
    },
    "webUrl": "https://www.colostate.edu"
  },
  "program": {
    "abbreviation": "MBA",
    "activities": null,
    "awards": null,
    "description": "Master of Business Administration with a major in Entreprenuership and Finance.",
    "displayName": "Master of Business Administration",
    "fieldsOfStudy": null,
    "grade": "3.9",
    "notes": null,
    "webUrl": "https://biz.colostate.edu"
  },
  "startMonthYear": "Date"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationalactivity-from-profile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-educationalactivity-from-profile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationalactivity-from-profile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationalactivity-from-profile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationalactivity-from-profile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationalactivity-from-profile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationalactivity-from-profile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationalactivity-from-profile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationalActivity"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

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
  "completionMonthYear": "Date",
  "endMonthYear": "Date",
  "institution": {
    "description": null,
    "displayName": "Colorado State University",
    "location": {
      "type": "business",
      "postOfficeBox": null,
      "street": "12000 E Prospect Rd",
      "city": "Fort Collins",
      "state": "Colorado",
      "countryOrRegion": "USA",
      "postalCode": "80525"
    },
    "webUrl": "https://www.colostate.edu"
  },
  "program": {
    "abbreviation": "MBA",
    "activities": null,
    "awards": null,
    "description": "Master of Business Administration with a major in Entreprenuership and Finance.",
    "displayName": "Master of Business Administration",
    "fieldsOfStudy": null,
    "grade": "3.9",
    "notes": null,
    "webUrl": "https://biz.colostate.edu"
  },
  "startMonthYear": "Date"
}
```


