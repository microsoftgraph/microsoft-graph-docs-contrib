---
title: "Update learningContent"
description: "Update the specified learningContent resource."
author: "malabikaroy"
ms.localizationpriority: medium
ms.subservice: "viva-learning"
doc_type: apiPageType
ms.date: 04/25/2024
---

# Update learningContent

Namespace: microsoft.graph

Update the specified [learningContent](../resources/learningcontent.md) resource.

Used by a [learning provider](../resources/learningprovider.md) to ingest or update the metadata for their content in Viva Learning. If the specified learning content doesn't yet exist for the specified provider, this operation creates the metadata for the new content. Otherwise, this operation replaces the metadata of the existing content.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "learningcontent_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/learningcontent-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

For a specific learning content based on its ID (primary key):

``` http
PATCH /employeeExperience/learningProviders/{learningProviderId}/learningContents/{learningContentId}
```

For a specific learning content based on its external ID (secondary key):

``` http
PATCH /employeeExperience/learningProviders/{learningProviderId}/learningContents(externalId='{externalId}') 
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
|additionalTags|String collection|Keywords, topics, and other tags associated with the learning content. Optional.|
|contentWebUrl|String|The content web URL for the learning content. Required.|
|contributors|String collection|The authors, creators, or contributors of the learning content. Optional.|
|createdDateTime|DateTimeOffset|The date and time when the learning content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.|
|description|String|The description or summary for the learning content. Optional.|
|duration|Duration|The duration of the learning content in seconds. The value is represented in ISO 8601 format for durations. Optional.|
|externalId|String|Unique external content ID for the learning content. Required.|
|format|String|The format of the learning content. For example, `Course`, `Video`, `Book`, `Book Summary`, `Audiobook Summary`. Optional.|
|level|Level|The difficulty level of the learning content. Possible values are: `Beginner`, `Intermediate`, `Advanced`. Optional.|
|isActive|Boolean|Indicates whether the content is active or not. Inactive content doesn't show up in the UI. The default value is `true`. Optional.|
|isPremium|Boolean|Indicates whether the learning content requires the user to sign-in on the learning provider platform or not. The default value is `false`. Optional.|
|isSearchable|Boolean|Indicates whether the learning content is searchable or not. The default value is `true`. Optional.|
|languageTag|String|The language of the learning content, for example, `en-us` or `fr-fr`. Required.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the learning content was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.|
|numberOfPages|Int32|The number of pages of the learning content, for example, `9`. Optional.|
|skillTags|String collection|The skills tags associated with the learning content. Optional.|
|sourceName|String|The source name of the learning content, such as `LinkedIn Learning` or `Coursera`. Optional.|
|thumbnailWebUrl|String|The URL of learning content thumbnail image. Optional.|
|title|String|The title of the learning content. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and an updated [learningContent](../resources/learningcontent.md) object in the response body.

## Examples

### Example 1: Update the metadata of a learning content based on its ID

The following example shows a request that updates the metadata of a learning content based on its ID (primary key).

#### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_learningcontent_id",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70", "77029588-a660-46b6-ba58-3ce4d21d5678"]
}
-->
``` http
PATCH  https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents/77029588-a660-46b6-ba58-3ce4d21d5678
Content-Type: application/json

{
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "level": "Beginner",
    "createdDateTime": "2018-01-01T00:00:00Z",
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
    "isSearchable": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-learningcontent-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-learningcontent-id-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-learningcontent-id-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-learningcontent-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-learningcontent-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-learningcontent-id-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-learningcontent-id-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.learningContent"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents/$entity",
    "id": "77029588-a660-46b6-ba58-3ce4d21d5678",
    "externalId": "LP4471",
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "level": "Beginner",
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
    "isSearchable": true
}
```

### Example 2: Update the metadata of a learning content based on its external ID

The following example shows a request that updates the metadata of a learning content based on its external ID (secondary key).

#### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_learningcontent_externalid",
  "sampleKeys": ["13727311-e7bb-470d-8b20-6a23d9030d70", "LP4471"]
}
-->
``` http
PATCH  https://graph.microsoft.com/v1.0/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents(externalId='LP4471') 
Content-Type: application/json

{
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "level": "Beginner",
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
    "isSearchable": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-learningcontent-externalid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-learningcontent-externalid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-learningcontent-externalid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-learningcontent-externalid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-learningcontent-externalid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-learningcontent-externalid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.learningContent"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents/$entity",
    "id": "77029588-a660-46b6-ba58-3ce4d21d5678",
    "externalId": "LP4471",
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "level": "Beginner",
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
    "isSearchable": true
}
```
