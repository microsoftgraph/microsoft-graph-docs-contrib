---
title: "Create educationSubmissionResource"
description: "Add a resource to the submission resource list."
author: "sharad-sharma-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Create educationSubmissionResource

Namespace: microsoft.graph

Add a resource to the submission resource list. 

This action can only be done by the student to whom this submission is assigned. This action will not succeed if the **allowStudentsToAddResources** flag isn't set to `true`. If the caller wants to create a new file-based resource, the file must be uploaded to the resources folder that is associated with the submission. If the file does not exist or isn't in that folder, the POST request will fail. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) | Not supported.  |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignments/{id}/submissions/{id}/resources
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of the resource, in this case [educationWordResource](../resources/educationwordresource.md) object.


## Response
If successful, this method returns a `201 Created` response code and an [educationWordResource](../resources/educationwordresource.md) object in the response body.

## Example
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationsubmissionresource_from_educationsubmission"
}-->
```http
POST https://graph.microsoft.com/v1.0/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b/submissions/4af73d2b-6b9c-493f-0688-979087bed39b/resources
Content-type: application/json
Content-length: 1097

{
    "resource": {
        "@odata.type": "microsoft.graph.educationWordResource",
        "displayName": "Report.docx",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2"
    }
}
```

### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationWordResource"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 1152

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('f4a941ff-9da6-4707-ba5b-0eae93cad0b4')/assignments('3c77de7f-539b-49e1-9c96-1274f2f0ee3b')/submissions('4af73d2b-6b9c-493f-0688-979087bed39b')/resources/$entity",
    "assignmentResourceUrl": null,
    "id": "d835503f-fd00-4840-b69c-7230d10e18b8",
    "resource": {
        "@odata.type": "#microsoft.graph.educationWordResource",
        "displayName": "Report.docx",
        "createdDateTime": "2021-08-04T00:23:08.6269586Z",
        "lastModifiedDateTime": "2021-08-04T00:23:08.6269586Z",
        "fileUrl": "https://graph.microsoft.com/v1.0/drives/b!DPA6q59Tw0mtgmyXRUmrQRqBZTesG-lMkl1cBmvvMeUEWrOk89nKRpUEr4ZhNYBc/items/016XPCQEELISJB7NVNVBAK7V4UIF6Q27U2",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "80cefd93-8d88-40e2-b5d3-67898383e226",
                "displayName": null
            }
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create educationSubmissionResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


