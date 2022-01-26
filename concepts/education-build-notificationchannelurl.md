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

This property is used to specify the default Teams channel to which notifications will be sent. Default value is null.

## Prerequisites

Before you can build the property, you must have identified the team for the current **assignment** and the channel name.

**Team**

![Identifying team](./images/notificationchannel-team.png)

**Channel**

![Identifying channel](./images/notificationchannel-channel.png)

## notificationChannelUrl property

The following steps describe how to build the property value.

### Step 1 - Get teamd id
Make a GET request with the team name.

#### Request example
The following example shows the request.

```http
GET https://graph.microsoft.com/v1.0/teams?$filter=displayName eq 'English Fall ''21'
```

#### Response example
The following example shows the response.

```http
HTTP/1.1 200 Ok
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams",
    "@odata.count": 1,
    "value": [
        {
            "id": "72a7baec-c3e9-4213-a850-f62de0adad5f",
            "createdDateTime": null,
            "displayName": "English Fall '21",
            "description": "English Fall '21",
            "internalId": null,
            "classification": null,
            "specialization": null,
            "visibility": null,
            "webUrl": null,
            "isArchived": null,
            "isMembershipLimitedToOwners": null,
            "memberSettings": null,
            "guestSettings": null,
            "messagingSettings": null,
            "funSettings": null,
            "discoverySettings": null
        }
    ]
}
```

### Step 2 - Get channel id
Make a GET request with the teamId obtained in previous step and the channel name.

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

### Step 3 - Construct the value for the notificationChannelUrl property
Build the value for the **notificationChannelUrl** property using the following format: `https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}`. Replace the `{team-id}` and `{channel-id}` placeholders with the values described in the following table.

| Placeholder | Description | Example |
|:--|:--|:--|
| `{team-id}` | Same team ID from the response in step 1. It is the team which current assignment belongs to. | 72a7baec-c3e9-4213-a850-f62de0adad5f |
| `{channel-id}` | Item ID from the response body obtained in step 2. | 19:jb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1@thread.tacv2 |

The following example shows a **notificationChannelUrl** based on this format.

```http
https://graph.microsoft.com/v1.0/teams/72a7baec-c3e9-4213-a850-f62de0adad5f/channels/19:jb2-ckDy2jONyW6ElO1phAVD5cTjuswYgoumI0oxrUw1@thread.tacv2
```

### Step 4 - Consume the notificationChannelUrl property for the assignment

You have now successfully built the url, you can consume it in any of these calls
* [Update educationAssignmentDefaults](/graph/api/educationassignmentdefaults-update)
* [Update educationAssignment](/graph/api/educationassignment-update)
