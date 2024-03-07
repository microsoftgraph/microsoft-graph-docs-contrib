---
title: "List learningContents"
description: "Get a list of the learningContent resources and their properties."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# List learningContents

Namespace: microsoft.graph

Get a list of the [learningContent](../resources/learningcontent.md) resources and their properties.

This list represents the metadata of the specified provider's content in Viva Learning.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningprovider_list_learningcontents" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningprovider-list-learningcontents-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/learningProviders/{learningProviderId}/learningContents
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [learningContent](../resources/learningcontent.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_learningcontent"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-learningcontent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-learningcontent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-learningcontent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-learningcontent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-learningcontent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-learningcontent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-learningcontent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.learningContent)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents",
    "@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents?skip=2&top=2",
    "@odata.count": 10,
    "value": [
        {
            "id": "99029577-a660-46b6-ba58-3ce4d21d5f50",
            "externalId": "LP4771",
            "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
            "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
            "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
            "sourceName": "MSLibrary",
            "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
            "languageTag": "en-us",
            "numberOfPages": 10,
            "duration": "PDT1H",
            "format": "Book",
            "createdDateTime": "2018-01-01T00:00:00",
            "lastModifiedDateTime": "2021-04-01T04:26:06.1995367Z",
            "contributors": [
                "Lina Wagner",
                "Lisa Richter"
            ], 
            "additionalTags": [
                "Create private or public teams",
                "Add members to teams"
            ],
            "skillTags": [
                "Create teams",
                "Teams channels",
                "Teams members"
            ],
            "isActive": true,
            "isPremium": false,
            "isSearchable": false
        },
        {
            "id": "77029588-a660-46b6-ba58-3ce4d21d5678",
            "externalId": "LP4772",
            "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
            "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
            "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
            "sourceName": "MSLibrary",
            "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
            "languageTag": "en-us",
            "numberOfPages": 10,
            "duration": "PDT1H",
            "format": "Book",
            "createdDateTime": "2018-01-01T00:00:00",
            "lastModifiedDateTime": "2021-04-01T04:26:06.1995367Z",
            "contributors": [
                "Lina Wagner",
                "Lisa Richter"
            ], 
            "additionalTags": [
                "Create private or public teams",
                "Add members to teams"
            ],
            "skillTags": [
                "Create teams",
                "Teams channels",
                "Teams members"
            ],
            "isActive": true,
            "isPremium": false,
            "isSearchable": false
        }
    ]
}
```
