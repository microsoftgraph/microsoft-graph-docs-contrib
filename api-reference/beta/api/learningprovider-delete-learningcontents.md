---
title: "Delete learningContent"
description: "Delete a learningContent object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
doc_type: apiPageType
---

# Delete learningContent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [learningContent](../resources/learningcontent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LearningContent.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LearningContent.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /employeeExperience/learningProviders/{learningProviderId}/learningContents/{learningContentId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_learningcontent"
}
-->
``` http 
GET /employeeExperience/learningProviders/{registrationId}/learningContents?$skip={skip}&$top={top} 
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
Returns
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders('13727311-e7bb-470d-8b20-6a23d9030d70')/learningContents",
    "value": [{
        "externalId": "LP4771",
        "title":  "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
        "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
        "contentWebUrl": "https://docs.microsoft.com/en-us/learn/modules/manage-classes-resources-assessment-planning-beedle",
        "sourceName": "MSLibrary",
        "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
        "languageTag": "en-us",
        "numberOfPages": 10,
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
    },
    {
        "externalId": "LP4772",
        "title":  "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle",
        "description": "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.",
        "contentWebUrl": "https://docs.microsoft.com/en-us/learn/modules/manage-classes-resources-assessment-planning-beedle/",
        "sourceName": "MSLibrary",
        "thumbnailWebUrl": "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF",
        "languageTag": "en-us",
        "numberOfPages": 10,
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
    }]
}


```

