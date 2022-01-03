---
title: "Build notificationChannelUrl"
description: "Learn how to build the notificationChannelUrl property value for assignments"
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# Build notificationChannelUrl property value using the Microsoft Graph API

This article describes how to use the education API in Microsoft Graph to build the `notificationChannelUrl` property for an [educationAssignment](/graph/api/resources/educationassignment).

## Prerequisites

Before you can build the property, you must have identified the team for the current **assignment** and the channel name.

## notificationChannelUrl property

The following steps describe how to build the property value.

### Step 1 - Get channel id
Make a GET request with the channel name.

#### Request example
The following example shows the request.

```http
GET https://graph.microsoft.com/v1.0/teams/72a7baec-c3e9-4213-a850-f62de0adad5f/channels?$filter=displayName eq 'General'
```

#### Response example
The following example shows the response.

```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('72a7baec-c3e9-4213-a850-f62de0adad5f')/channels",
    "@odata.count": 1,
    "value": [
        {
            "id": "19:jb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1@thread.tacv2",
            "createdDateTime": "2021-08-25T12:33:49.124Z",
            "displayName": "General",
            "description": "English Fall '21",
            "isFavoriteByDefault": null,
            "email": "",
            "webUrl": "https://teams.microsoft.com/l/channel/19%3Ajb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1%40thread.tacv2/General?groupId=72a7baec-c3e9-4213-a850-f62de0adad5f&tenantId=b6338c92-533e-4f6d-a327-994263712399",
            "membershipType": "standard"
        }
    ]
}
```

### Step 2 - Construct the value for the notificationChannelUrl property
Build the value for the **notificationChannelUrl** property using the following format: `https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}`. Replace the `{team-id}` and `{channel-id}` placeholders with the values described in the following table.

| Placeholder | Description | Example |
|:--|:--|:--|
| `{team-id}` | Same team ID from the request URL used in step 1. It is the team which current assignment belongs to. | 72a7baec-c3e9-4213-a850-f62de0adad5f |
| `{channel-id}` | Item ID from the response body obtained in step 1. | 19:jb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1@thread.tacv2 |

The following example shows a **notificationChannelUrl** based on this format.

```http
https://graph.microsoft.com/v1.0/teams/72a7baec-c3e9-4213-a850-f62de0adad5f/channels/19:jb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1@thread.tacv2
```

### Step 3 - Set the notificationChannelUrl property for the assignment

You have now successfully built the url, you can set it in any of these calls
* [Update educationAssignmentDefaults](/graph/api/educationassignmentdefaults-update)
* [Update educationAssignment](/graph/api/educationassignment-update)
