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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [learningContent](../resources/learningcontent.md) resources and their properties.

This list represents the metadata of the specified provider's content in Viva Learning.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningContent.Read.All|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [learningContent](../resources/learningcontent.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_learningcontent",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70"]
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-learningcontent-csharp-snippets.md)]
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

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.learningContent",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents",
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
