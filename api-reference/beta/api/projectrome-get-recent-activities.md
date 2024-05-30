---
title: "Get recent user activities"
description: Get recent activities for a given user.
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: apiPageType
author: "ailae"
---

# Get recent user activities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get recent activities for a given user. This OData function has some default behaviors included to make it operate like a "most recently used" API. The service queries for the most recent [activityHistoryItems](../resources/projectrome-historyitem.md), and then pull those related activities. Activities are sorted according to the most recent **lastModified** on the **activityHistoryItem**. This means that activities without **activityHistoryItems** won't be included in the response. The UserActivity.ReadWrite.CreatedByApp permission will also apply extra filtering to the response, so that only activities created by your application are returned. This server-side filtering might result in empty pages if the user is active and other applications have created more recent activities. To get your application's activities, use the **nextLink** property to paginate.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "projectrome_get_recent_activities" } -->
[!INCLUDE [permissions-table](../includes/permissions/projectrome-get-recent-activities-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/activities/recent
```

## Optional query parameters

This method supports some [OData Query Parameters](/graph/query-parameters) to help customize the response. The following query parameters are supported:

- $expand for the **historyItems** navigation property.
- $top to limit the maximum number of items across pages.
- $filter on the **lastModifiedDateTime** property for either **activities** or **historyItems**, if expanded.

The following are some examples of supported queries with URL encoding.

```http
/me/activities/recent?$expand=historyItems($filter=lastModifiedDateTime%20gt%202018-01-22T21:45:00.347Z%20and%20lastModifiedDateTime%20lt%202018-01-22T22:00:00.347Z)

/me/activities/recent?$filter=lastModifiedDateTime%20lt%202018-01-16T01:03:21.347Z%20and%20lastModifiedDateTime%20gt%202018-01-03T01:03:21.347Z

/me/activities/recent?$top=5
```

## Request headers

|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string | Bearer {token}. Required.|

## Request body

Don't specify a request body.

## Response

If successful, this method returns the `200 OK` response code with the user's recent activities for your application.

## Example

### Request

Here's an example  of the request.

<!-- {
  "blockType": "ignored",
  "name": "get_recent_activities"
}-->

```http
GET https://graph.microsoft.com/beta/me/activities/recent
```

### Response

Here's an example  of the response.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.activity",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(userActivity)",
   "@odata.nextLink":"https://graph.microsoft.com/beta/me/activities/recent?$skiptoken=%24filter%3dlastModifiedDateTime+lt+2018-02-26T18%3a06%3a19.365Z",
   "value":[
      {
         "@odata.type":"#microsoft.graph.activity",
         "activitySourceHost":"https://www.contoso.com",
         "createdDateTime":"2018-02-26T18:34:29.592Z",
         "lastModifiedDateTime":"2018-02-26T18:34:29.607Z",
         "id":"5347642601316252694",
         "appActivityId":"/article?12345",
         "visualElements":{
            "attribution":{
               "iconUrl":"https://www.contoso.com/icon",
               "alternateText":"Contoso, Ltd.",
               "addImageQuery":"false"
            },
            "displayText":"Contoso How-To: How to Tie a Reef Knot",
            "description":"How to Tie a Reef Knot. A step-by-step visual guide to the art of nautical knot-tying.",
            "backgroundColor":"#ff0000",
            "content":{
               "$schema":"https://adaptivecards.io/schemas/adaptive-card.json",
               "type":"AdaptiveCard",
               "body":[
                  {
                     "type":"TextBlock",
                     "text":"Contoso MainPage"
                  }
               ]
            }
         },
         "activationUrl":"https://www.contoso.com/article?id=12345",
         "appDisplayName":"Contoso, Ltd.",
         "userTimezone":"Africa/Casablanca",
         "fallbackUrl":"https://www.contoso.com/article?id=12345",
         "contentUrl":"https://www.contoso.com/article?id=12345",
         "contentInfo":{
            "@context":"https://schema.org",
            "@type":"Article",
            "author":"John Doe",
            "name":"How to Tie a Reef Knot"
         },
         "expirationDateTime":"2018-03-28T18:34:29.607Z",
         "status":"updated"
      }
   ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get recent activities",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
