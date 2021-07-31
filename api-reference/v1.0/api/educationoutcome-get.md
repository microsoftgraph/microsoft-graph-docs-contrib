---
title: "Get educationOutcome"
description: "Retrieve the properties of a specific outcome."
author: "cristobal-buenrostro"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Get educationOutcome

Namespace: microsoft.graph

Retrieves an [educationOutcome](../resources/educationoutcome.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{​​classId}​​/assignments/{​​assignmentId}​​/submissions/{​​submissionId}​​/outcomes/{​​outcomeId}​​
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and an [educationOutcome](../resources/educationoutcome.md) object in the response body.

If an invalid **OutcomeId** is specified, a `404` error is returned

```http
HTTP/1.1 404 Not Found
Content-type: application/json

{
	"error": {
		"code": "20241",
		"message": "Entity not found. Outcome id: 05d0f76c-1dfa-4442-926c-1b094828b505"
	}
}
```
## Example
### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_educationoutcome"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4​​/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b/submissions/4af73d2b-6b9c-493f-0688-979087bed39b​​/outcomes/05d0f76c-1dfa-4442-926c-1b094828b505​​
```
# [C#](#tab/csharp)

# [JavaScript](#tab/javascript)

# [Objective-C](#tab/objc)

# [Java](#tab/java)


---


### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationOutcome"
} -->
```http
HTTP/1.1 404 Not Found
Content-type: application/json

{
    "error": {
        "code": "",
        "message": "No HTTP resource was found that matches the request URI 'https://assignments.onenote.com/api/v1.0/edu/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b/submissions('4af73d2b-6b9c-493f-0688-979087bed39b')/outcomes('ca05367a-b292-42d5-aff7-5d279feeace8')'.",
        "innerError": {
            "message": "No routing convention was found to select an action for the OData path with template '~/entityset/key/navigation/key/navigation/key/navigation/key'.",
            "date": "2021-07-31T12:40:34",
            "request-id": "e4c36fe7-eb13-41dd-9221-391f27e5d109",
            "client-request-id": "35ea8cad-8c35-9bb2-edfa-98a00cb67514"
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-07-31 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get educationOutcome",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
