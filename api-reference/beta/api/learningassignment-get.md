---
title: "Get learningAssignment"
description: "Read the properties and relationships of a learningAssignment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get learningAssignment
Namespace: microsoft.graph



Read the properties and relationships of a [learningAssignment](../resources/learningassignment.md) object.

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
GET /learningAssignment
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

If successful, this method returns a `200 OK` response code and a [learningAssignment](../resources/learningassignment.md) object in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET https://graph.microsoft.com/v1.0/learningAssignment
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

