---
title: "Update learningContent"
description: "Update the properties of a learningContent object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
doc_type: apiPageType
---

# Update learningContent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [learningContent](../resources/learningcontent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**Learningcontent.readwrite.all.**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**Learningcontent.readwrite.all**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
/employeeExperience/learningProviders/{registrationId}/learningContents(externalId='{externalId}') 


```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|additionalTags|String collection|**Keywords, topics, other tags associated with the Learning Content** Optional.|
|contentWebUrl|String|**Content web url for the Learning Content** Required.|
|contributor|String|**Author/creator/contributor of the Learning Content** Optional.|
|createdDateTime|DateTimeOffset|**Date the Learning Content was created in 'yyyy-MM-ddThh:mm:ssZ' in UTC.** Optional.|
|description|String|**Description/summary for Learning Content** Optional.|
|duration|Duration|**Duration of the Learning Content in seconds** Optional.|
|externalId|String|**External Content id for the Learning Content** Required.|
|format|String|**Format of the Learning Content.Ex: Course,Video,Book,Book Summary,Audiobook Summary** Optional.|
|isActive|Boolean|**Indicates whether the content is active or not. Inactive content will not show up in UI. The default value is true** Optional.|
|isPremium|Boolean|**Indicates whether the Learning content requires user to sign-in on the Learning provider platform or not. The default value is false** Optional.|
|isSearchable|Boolean|**Indicates whether the Learning Content is searchable or not. The default value is true** Optional.|
|languageTag|String|**Language of the Learning Content ex: 'en-us', 'fr-fr'** Required.|
|lastModifiedDateTime|DateTimeOffset|**Date the Learning Content was last modified in 'yyyy-MM-ddThh:mm:ssZ' in UTC** Optional.|
|numberOfPages|Int32|**number of pages of the Learning Content. Ex: Number of pages** Optional.|
|skillTags|String collection|**Skills tags associated with the Learning Content** Optional.|
|sourceName|String|**Learning content source name like LinkedIn Learning, Coursera** Optional.|
|thumbnailWebUrl|String|**URL of Learning Content thumbnail image** Optional.|
|title|String|**Title of the Learning Content** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [learningContent](../resources/learningcontent.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_learningcontent"
}
-->
``` http
PATCH /employeeExperience/learningProviders/{registrationId}/learningContents(externalId='{externalId}') http/1.1 Content-Type: application/json
{
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://docs.microsoft.com/en-us/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "createdDateTime": "2018-01-01T00:00:00",
    "lastModifiedDateTime": "2021-04-01T04:26:06.1995367Z",
    "contributor": "Scott Simpson",
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


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
Returns 202 Accepted
{ 
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents/$entity",
    "externalId": "LP4471",
    "title": "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    "contentWebUrl": "https://docs.microsoft.com/en-us/learn/modules/manage-classes-resources-assessment-planning-beedle/",
    "sourceName": "MsLearn",
    "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
    "languageTag": "en-us",
    "numberOfPages": 9,
    "duration": "PT20M",
    "format": "Book",
    "createdDateTime": "2018-01-01T00:00:00",
    "lastModifiedDateTime": "2021-04-01T04:26:06.1995367Z",
    "contributor": "Scott Simpson",
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
GraphServiceClient graphClient = new GraphServiceClient(authProvider);

var learningContent = new LearningContent
{
    title = "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
    description = "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
    contentWebUrl = "https = //learningplayer.microsoft.com/activity/s3332473/launch",
    sourceName = "LinkedIn", 
    thumbnailWebUrl =  "https = //img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4LiSI?ver=160f&q=90&m=6&h=417&w=740&b=%23FFFFFFFF&l=f&o=t&aim=true",
    languageTag =  "en_us",
    numberOfPages = 9,
    duration = "PT20M",
    format = "Course",
    createdDateTime = "2021-05-11T16 = 57 = 17+00 = 00",
    lastModifiedDateTime = "2021-05-11T16 = 57 = 17+00 = 00",
    contributor = "Scott Simpson",
    additionalTags = [
        "Create private or public teams",
        "Add members to teams"
    ],
    skillTags = [
        "Create teams",
        "Teams channels",
        "Teams members"
    ],
    isActive = true,
    isPremium = false,
    isSearchable = true
}

```

