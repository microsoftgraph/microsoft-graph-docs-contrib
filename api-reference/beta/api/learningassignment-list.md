---
title: "List learningAssignments"
description: "Get a list of the learningAssignment objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List learningAssignments
Namespace: microsoft.graph



Get a list of the [learningAssignment](../resources/learningassignment.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.vivaLearning.learningAssignment not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [learningAssignment](../resources/learningassignment.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_learningassignment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Collection URI for microsoft.vivaLearning.learningAssignment not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.vivaLearning.learningAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.vivaLearning.learningAssignment",
      "externalcourseActivityId": "String",
      "learningProviderId": "String",
      "learningContentId": "String",
      "learnerUserId": "String",
      "status": "String",
      "completedDateTime": "String (timestamp)",
      "completionPercentage": "Integer",
      "assignmentType": "String",
      "assignerUserId": "String",
      "assignedDateTime": "String (timestamp)",
      "dueDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "notes": {
        "@odata.type": "microsoft.graph.itemBody"
      }
    }
  ]
}
```

