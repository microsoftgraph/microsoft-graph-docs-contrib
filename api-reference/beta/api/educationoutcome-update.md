---
title: "Update educationoutcome"
description: "Update the properties of educationoutcome object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update educationoutcome

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an educationoutcome object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /education/me/assignments/{id}/submissions/{id}/outcomes/{id}
PATCH /education/users/{id}/assignments/{id}/submissions/{id}/outcomes/{id}
PATCH /education/classes/{id}/assignments/{id}/submissions/{id}/outcomes/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

The educationOutcome object will be one of the derived types, [educationPointsOutcome](../resources/educationpointsoutcome.md), [educationFeedbackOutcome](../resources/educationfeedbackoutcome.md), or [educationRubricOutcome](../resources/educationrubricoutcome.md). Supply the specific properties relevant to the type of outcome being patched.

All derived outcome types have a regular and a "published" property appropriate to that type of outcome; e.g., "points" and "publishedPoints," "feedback" and "publishedFeedback," etc. Do not update the "published" property; it is for internal use. E.g., to assign points to an educationPointsOutcome, patch the "points" property, but do not patch "publishedPoints."

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|lastModifiedBy|identitySet||
|lastModifiedDateTime|DateTimeOffset||

## Response

If successful, this method returns a `200 OK` response code and an updated [educationOutcome](../resources/educationoutcome.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_educationoutcome"
}-->

```http
PATCH https://graph.microsoft.com/beta/education/me/assignments/{id}/submissions/{id}/outcomes/{id}
Content-type: application/json

{
  "lastModifiedBy": {
    "application": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "device": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedDateTime": "datetime-value"
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationOutcome"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "lastModifiedBy": {
    "application": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "device": {
      "id": "id-value",
      "displayName": "displayName-value"
    },
    "user": {
      "id": "id-value",
      "displayName": "displayName-value"
    }
  },
  "lastModifiedDateTime": "datetime-value",
  "id": "id-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update educationoutcome",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->