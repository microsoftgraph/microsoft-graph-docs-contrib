---
title: "Create virtualEventWebinar"
description: "Create a new virtualEventWebinar object in draft mode."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/18/2024
---

# Create virtualEventWebinar

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventWebinar](../resources/virtualeventwebinar.md) object in draft mode.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsroot-post-virtualevents-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-post-virtualevents-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/webinars
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Accept-Language| [Acceptable human languages for the response](/concepts/search-concept-acceptlanguage-header.md). Required. |

## Request body

In the request body, supply a JSON representation of the supported derived types of [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

You can specify the following properties when you create a [virtualEventWebinar](../resources/virtualeventwebinar.md).

|Property|Type|Description|
|:---|:---|:---|
| audience | [meetingAudience](../resources/virtualeventwebinar.md#meetingaudience-values) | The audience to whom the webinar is visible. |
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | The identity information of coorganizers of the webinar. |
| description | [itemBody](../resources/itembody.md) | A description of the webinar. |
| displayName | String | The display name of the webinar. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time when the webinar ends. |
| settings | [virtualEventSettings](../resources/virtualeventsettings.md) | The webinar settings. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time when the webinar starts. |

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualeventwebinar"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/webinars
Content-Type: application/json
Accept-Language: en-US

{     
    "displayName": "The Impact of Tech on Our Lives",
    "description": {
      "contentType": "text",
      "content": "Discusses how technology has changed the way we communicate."
    },
    "startDateTime": {
      "dateTime": "2024-03-30T10:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "endDateTime": {
      "dateTime": "2024-03-30T17:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "audience": "organization",
    "coOrganizers": [
      {
        "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b", 
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c" 
      }
    ],
    "settings": {
      "isAttendeeEmailNotificationEnabled": false
    }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventwebinar-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventWebinar"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json
Accept-Language: en-US

{ 
    "id": "a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba",
    "status": "draft",
    "displayName": "The Impact of Tech on Our Lives",
    "description": {
      "contentType": "text",
      "content": "Discusses how technology has changed the way we communicate."
    },
    "startDateTime": {
      "dateTime": "2024-03-30T10:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "endDateTime": {
      "dateTime": "2024-03-30T17:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "audience": "organization",
    "createdBy": {
      "application": null,
      "device": null,
      "user": {
        "id": "b7ef013a-c73c-4ec7-8ccb-e56290f45f68",
        "displayName": "Diane Demoss",
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
      }
    },
    "coOrganizers": [
      { 
        "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b", 
        "displayName": "Kenneth Brown", 
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c" 
      }
    ],
    "settings": {
      "isAttendeeEmailNotificationEnabled": false
    },
    "externalEventInformation": []
}
```
