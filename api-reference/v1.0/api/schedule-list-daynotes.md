---
title: "List dayNote objects"
description: "Get a list of the dayNote objects and their properties."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# List dayNote

Namespace: microsoft.graph

Get a list of the [dayNote](../resources/daynote.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_list_daynotes" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-list-daynotes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /teams/{teamsId}/schedule/dayNotes
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following example shows how to use the `$filter` parameter.

```http
GET /teams/{teamsId}/schedule/dayNotes?$filter=dayNoteDate eq 2023-11-3
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [dayNote](../resources/daynote.md) objects in the response body.

## Examples

### Request

The following example shows a request.

```http
GET /teams/d72f9b8e-4c76-4f50-bf93-51b17aab0cd9/schedule/dayNotes
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "NOTE_52191d41-ce2d-4295-a477-b75941bd8e0f",
      "dayNoteDate": "2025-01-08",
      "draftDayNote": null,
      "sharedDayNote": {
        "contentType": "text",
        "content": "Expect a lot of customers today with the holiday traffic."
      }
    },
    {
      "id": "NOTE_d011e056-5f78-4020-98b2-84ef6f71d008",
      "dayNoteDate": "2025-01-09",
      "sharedDayNote": null,
      "draftDayNote": {
        "contentType": "text",
        "content": "Produce shipment arriving at 11 AM"
      }
    }
  ]
}
```

