---
title: "Create dayNote"
description: "Create a new dayNote object."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Create dayNote

Namespace: microsoft.graph

Create a new [dayNote](../resources/daynote.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_post_daynotes" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-post-daynotes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/dayNotes
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
|dayNoteDate|Date|The date of the day note.|
|sharedDayNote|[itemBody](../resources/itembody.md)|The draft version of this **dayNote** that is viewable by managers.|
|draftDayNote|[itemBody](../resources/itembody.md)|The shared version of this **dayNote** that is viewable by both employees and managers.|


## Response

If successful, this method returns a `200 OK` response code and a [dayNote](../resources/daynote.md) object in the response body.

## Examples

### Request
The following example shows a request.

```http
POST /teams/d72f9b8e-4c76-4f50-bf93-51b17aab0cd9/schedule/dayNotes
Content-Type: application/json

{
  "dayNoteDate": "2025-01-09",
  "sharedDayNote": null,
  "draftDayNote": {
    "contentType": "text",
    "content": "Produce shipment arriving at 11 AM"
  }
}
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "NOTE_ff2194ab-0ae5-43e3-acb4-ec2654927213",
  "dayNoteDate": "2025-01-09",
  "sharedDayNote": null,
  "draftDayNote": {
    "contentType": "text",
    "content": "Produce shipment arriving at 11 AM"
  }
}
```

