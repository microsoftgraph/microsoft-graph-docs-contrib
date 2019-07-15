---
title: "Update educationOutcome"
description: "Update the properties of educationOutcome object."
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "apiPageType"
---

# Update educationoutcome

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationOutcome](../resources/educationoutcome.md) object.

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
PATCH /education/classes/{id}/assignments/{id}/submissions/{id}/outcomes/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

The educationOutcome object will be one of the following derived types: **educationPointsOutcome**, **educationFeedbackOutcome**, or **educationRubricOutcome**. Supply the specific properties relevant to the type of outcome being patched.

All derived outcome types have a regular and a "published" property appropriate to that type of outcome; for example, **points** and **publishedPoints**, **feedback** and **publishedFeedback**. Do not update the "published" property; it is for internal use. For example, to assign points to an **educationPointsOutcome**, patch the **points** property, but do not patch **publishedPoints**.

## Response

If successful, this method returns a `200 OK` response code and an updated [educationOutcome](../resources/educationoutcome.md) object in the response body.

## Examples

### Request

The following is an example of the request for updating a feedback outcome.
<!-- {
  "blockType": "request",
  "name": "update_educationoutcome"
}-->

```http
PATCH https://graph.microsoft.com/beta/education/me/assignments/{id}/submissions/{id}/outcomes/{id}
Content-type: application/json

{
    "@odata.type":"#microsoft.education.assignments.api.educationFeedbackOutcome",
    "feedback":{
        "text":{
            "content":"This is feedback for the assignment as a whole.",
            "contentType":"text"
        }
    }
}
```

The following is an example of the request for updating a points outcome.
<!-- {
  "blockType": "request",
  "name": "update_educationoutcome"
}-->

```http
PATCH https://graph.microsoft.com/beta/education/me/assignments/{id}/submissions/{id}/outcomes/{id}
Content-type: application/json

{
    "@odata.type":"#microsoft.education.assignments.api.educationPointsOutcome",
    "points":{
        "@odata.type":"#microsoft.education.assignments.api.educationAssignmentPointsGrade",
        "points":85
    }
}
```

The following is an example of the request for updating a rubric outcome.
<!-- {
  "blockType": "request",
  "name": "update_educationoutcome"
}-->

```http
PATCH https://graph.microsoft.com/beta/education/me/assignments/{id}/submissions/{id}/outcomes/{id}
Content-type: application/json

{
    "@odata.type":"#microsoft.education.assignments.api.educationRubricOutcome",
    "rubricQualityFeedback":[
        {
            "qualityId":"ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "feedback":{
                "content":"This is feedback specific to this quality of the rubric.",
                "contentType":"text"
            }
        },
        {
            "qualityId":"bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "feedback":{
                "content":"This is feedback specific to this quality of the rubric.",
                "contentType":"text"
            }
        }
    ],
    "rubricQualitySelectedLevels":[
        {
            "qualityId":"ebe97fd7-47f7-4e9a-b31b-221ad731fc5a",
            "columnId":"db2a0c91-abef-44cb-b8b1-ef1f85ef4a77"
        },
        {
            "qualityId":"bbf3fb4a-a794-4b51-a1ad-c22fb891c5d8",
            "columnId":"519cd134-c513-40b9-aa71-fdb0d063c084"
        }
    ]
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
    "@odata.type":"#microsoft.education.assignments.api.educationPointsOutcome",
    "id":"ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
    "lastModifiedBy":{
        "user":{
            "id":"9391878d-903c-406c-bb1c-0f17d00fd878"
        }
    },
    "points":{
        "gradedDateTime":"2019-07-15T22:35:48.2429387Z",
        "points":85,
        "gradedBy":{
            "user":{
                "id":"9391878d-903c-406c-bb1c-0f17d00fd878"
            }
        }
    }
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