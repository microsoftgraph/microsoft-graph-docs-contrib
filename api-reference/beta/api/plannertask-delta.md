---
title: "plannerTask: delta"
description: "Get newly created, updated, or deleted tasks in either a Planner plan or assigned to the signed-in user without having to perform a full read of the entire resource collection."
author: "AnubhavKumarSingh"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: apiPageType
---

# plannerTask: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created, updated, or deleted [tasks](../resources/plannertask.md) in either a Planner [plan](../resources/plannerplan.md) or assigned to the signed-in user without having to perform a full read of the entire resource collection. For details, see [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Tasks.Read                                  |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Tasks.Read.All                              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /planner/tasks/delta
GET /me/planner/tasks/delta
```

## Query parameters

Tracking changes incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltaToken` and `$skipToken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response. You only need to specify any query parameters once upfront. In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response. That URL already includes the encoded parameters.

| Query parameter | Type   | Description                                                                                                                                                                                                                                                                                                                                                                    |
| :-------------- | :----- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $deltaToken     | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same resource collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL, including this token in the first request of the next round of change tracking for that collection. |
| $skipToken      | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same resource collection.                                                                                                                                                                |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json          |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [plannerTask](../resources/plannertask.md) collection in the response body.

## Examples

### Example 1: Get delta on tasks in a plannerPlan

The following example shows a request for the delta on **plannerTask** objects in a **plannerPlan**.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertaskthis_delta_e1"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/planner/tasks/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannertaskthis-delta-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannertaskthis-delta-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannertaskthis-delta-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertaskthis-delta-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannertaskthis-delta-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerTask)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#plannerTask",
  "@odata.deltaLink": "https://graph.microsoft.com/beta/planner/plans('-W4K7hIak0WlAwgJCn1sEWQABgjH')/tasks?%24expand=details&%24deltatoken=0%257eaa6c4c81-656f-40e8-a2c5-60f4116fa9a4",
  "value": [
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBASCc=\"",
      "createdBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
      "createdByApp": "09abbdfd-ed23-44ee-a2d9-a627aa1c90f3",
      "createdByAsIdentitySet": {
        "user": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
        },
        "application": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "09abbdfd-ed23-44ee-a2d9-a627aa1c90f3"
        }
      },
      "userContentLastModifiedBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
      "userContentLastModifiedByApp": null,
      "userContentLastModifiedByAsIdentitySet": {
        "user": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
        }
      },
      "planId": "-W4K7hIak0WlAwgJCn1sEWQABgjH",
      "bucketId": "iz1mmIxX7EK0Yj7DmRsMs2QAEDXH",
      "title": "Testing",
      "orderHint": "8585371316800245114P\\",
      "assigneePriority": "8585371316123370883",
      "focusDateTime": null,
      "percentComplete": 0,
      "startDateTime": null,
      "createdDateTime": "2022-09-29T18:14:25.6091874Z",
      "userContentLastModifiedDate": "2022-09-29T18:14:33.1404924Z",
      "dueDateTime": null,
      "recurrence": null,
      "hasDescription": false,
      "previewType": "automatic",
      "completedDateTime": null,
      "completedBy": null,
      "completedByApp": null,
      "completedByAsIdentitySet": null,
      "referenceCount": 0,
      "checklistItemCount": 0,
      "activeChecklistItemCount": 0,
      "appliedCategories": {},
      "assignments": {
        "b40c85a0-1a66-4fa3-932f-cc9249ce8c29": {
          "@odata.type": "#microsoft.taskServices.assignment",
          "assignedBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
          "assignedByAppId": null,
          "assignedByAsIdentitySet": {
            "user": {
              "@odata.type": "#microsoft.taskServices.identity",
              "displayName": null,
              "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
            }
          },
          "assignedDateTime": "2022-09-29T18:14:33.1404924Z",
          "orderHint": "8585371316723527019PX",
          "createdBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
          "createdByAppId": null,
          "createdByAsIdentitySet": {
            "user": {
              "@odata.type": "#microsoft.taskServices.identity",
              "displayName": null,
              "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
            }
          }
        }
      },
      "conversationThreadId": null,
      "priority": 5,
      "creationSource": {
        "publication": null,
        "externalSource": null
      },
      "creationSourceInfo": null,
      "id": "aSOQ0mveu06bTSkfnJQay2QAIn_l",
      "version": "1-Task  @@@@@@@@@@@@@@@H",
      "details@odata.context": "https://tasks.officeppe.com/taskApi/V3.0/$metadata#plans('-W4K7hIak0WlAwgJCn1sEWQABgjH')/tasks('aSOQ0mveu06bTSkfnJQay2QAIn_l')/details/$entity",
      "details": {
        "@odata.etag": "W/\"JzEtVGFza0RldGFpbHMgQEBAQEBAQEBAQEBAQEBARCc=\"",
        "description": "",
        "notes": null,
        "previewType": "automatic",
        "references": {},
        "checklist": {},
        "id": "aSOQ0mveu06bTSkfnJQay2QAIn_l",
        "version": "1-TaskDetails @@@@@@@@@@@@@@@D"
      }
    }
  ]
}
```

### Example 2: Get delta on tasks assigned to a user

The following example shows a request for the delta on **plannerTask** objects assigned to a user.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertaskthis_delta_e2"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/planner/tasks/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannertaskthis-delta-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannertaskthis-delta-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannertaskthis-delta-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertaskthis-delta-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannertaskthis-delta-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerTask)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#plannerTask",
  "@odata.deltaLink": "https://graph.microsoft.com/beta/me/planner/tasks/delta?%24expand=details&%24deltatoken=0%257eaa6c4c81-656f-40e8-a2c5-60f4116fa9a4",
  "value": [
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBASCc=\"",
      "createdBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
      "createdByApp": "09abbdfd-ed23-44ee-a2d9-a627aa1c90f3",
      "createdByAsIdentitySet": {
        "user": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
        },
        "application": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "09abbdfd-ed23-44ee-a2d9-a627aa1c90f3"
        }
      },
      "userContentLastModifiedBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
      "userContentLastModifiedByApp": null,
      "userContentLastModifiedByAsIdentitySet": {
        "user": {
          "@odata.type": "#microsoft.taskServices.identity",
          "displayName": null,
          "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
        }
      },
      "planId": "-W4K7hIak0WlAwgJCn1sEWQABgjH",
      "bucketId": "iz1mmIxX7EK0Yj7DmRsMs2QAEDXH",
      "title": "Testing",
      "orderHint": "8585371316800245114P\\",
      "assigneePriority": "8585371316123370883",
      "focusDateTime": null,
      "percentComplete": 0,
      "startDateTime": null,
      "createdDateTime": "2022-09-29T18:14:25.6091874Z",
      "userContentLastModifiedDate": "2022-09-29T18:14:33.1404924Z",
      "dueDateTime": null,
      "recurrence": null,
      "hasDescription": false,
      "previewType": "automatic",
      "completedDateTime": null,
      "completedBy": null,
      "completedByApp": null,
      "completedByAsIdentitySet": null,
      "referenceCount": 0,
      "checklistItemCount": 0,
      "activeChecklistItemCount": 0,
      "appliedCategories": {},
      "assignments": {
        "b40c85a0-1a66-4fa3-932f-cc9249ce8c29": {
          "@odata.type": "#microsoft.taskServices.assignment",
          "assignedBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
          "assignedByAppId": null,
          "assignedByAsIdentitySet": {
            "user": {
              "@odata.type": "#microsoft.taskServices.identity",
              "displayName": null,
              "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
            }
          },
          "assignedDateTime": "2022-09-29T18:14:33.1404924Z",
          "orderHint": "8585371316723527019PX",
          "createdBy": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29",
          "createdByAppId": null,
          "createdByAsIdentitySet": {
            "user": {
              "@odata.type": "#microsoft.taskServices.identity",
              "displayName": null,
              "id": "b40c85a0-1a66-4fa3-932f-cc9249ce8c29"
            }
          }
        }
      },
      "conversationThreadId": null,
      "priority": 5,
      "creationSource": {
        "publication": null,
        "externalSource": null
      },
      "creationSourceInfo": null,
      "id": "aSOQ0mveu06bTSkfnJQay2QAIn_l",
      "version": "1-Task  @@@@@@@@@@@@@@@H",
      "details@odata.context": "https://tasks.officeppe.com/taskApi/V3.0/$metadata#plans('-W4K7hIak0WlAwgJCn1sEWQABgjH')/tasks('aSOQ0mveu06bTSkfnJQay2QAIn_l')/details/$entity",
      "details": {
        "@odata.etag": "W/\"JzEtVGFza0RldGFpbHMgQEBAQEBAQEBAQEBAQEBARCc=\"",
        "description": "",
        "notes": null,
        "previewType": "automatic",
        "references": {},
        "checklist": {},
        "id": "aSOQ0mveu06bTSkfnJQay2QAIn_l",
        "version": "1-TaskDetails @@@@@@@@@@@@@@@D"
      }
    },
  ]
}
```
