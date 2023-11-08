---
title: "Create exportJob"
description: "Create a new exportJob object in Viva Goals."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Create an exportJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [exportJob](../resources/exportjob.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.ReadWrite.All|Goals-Export.ReadWrite.All|

## HTTP request

```http
POST /employeeExperience/goals/exportJobs
```

## Request headers

| Name          | Description   |
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
In the request body, provide a JSON representation of a [exportJob](../resources/exportjob.md) object.

Following table shows the properties that are required when you create the exportJob.
| Property | Type | Description |
|: ------- |: --- |: -----------|
| goalsOrganizationId | String | The unique identifier of the goals organization |
| ... | ... | ... |
| explorerViewId | String | The unique identifier of the explorer view to be exported |

## Response

If successful, this method returns a `201 Created` and a [exportJob](../resources/exportjob.md)  object in the response body.

This method also returns `409 Conflict` when attempting to create an [exportJob](../resources/exportjob.md) object with the same properties (goalsOrganizationId and explorerViewId) to an existing [exportJob](../resources/viva-goals-export-job.md) object that is pending completion. 

Once the pending job completes, you can create the [exportJob](../resources/exportjob.md) object.

## Examples

### Example 1: Status is "notStarted"

#### Request

Following is an example of the request.

``` http
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-Type: application/json

{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

#### Response

``` http
HTTP/1.1 201 Created 
Content-type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU"

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "id": "j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU",
    "createdDateTime": "2023-11-06T05:46:07.985Z",
    "status": "notStarted"
}
```

### Example 2: Status is "conflicting"

#### Request

Following is an example of the request.

``` http
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-Type: application/json

{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

#### Response

``` http
HTTP/1.1 409 Conflict
Content-type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU"

{
    "error": 
    {
        "code": "notAllowed",
        "message": "Another export job is still active or waiting to be executed",
        "target": "j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU",
        "innererror":
        {
            "code": "exportJobAlreadyExists",
            "date": "2023-11-03T07:17:25",
            "request-id": "586e4626-8e0d-4e71-87e1-17050915b57c",
            "client-request-id": "a8c5cf30-2de7-d8f2-f4f3-5b9028f31758"
        }
    }
}
```
### Example 3: When specified goalsOrganizationId doesn't exist

#### Request

Following is an example of the request.

``` http
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-Type: application/json

{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f813", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

#### Response

``` http
HTTP/1.1 404 Not Found 
Content-type: application/json

{
    "error": {
        "code": "notFound",
        "message": "Goals organization not found",
        "innerError": {
            "code": "goalsOrganizationIdNotFound",
            "date": "2023-11-03T07:17:25",
            "request-id": "586e4626-8e0d-4e71-87e1-17050915b57c",
            "client-request-id": "a8c5cf30-2de7-d8f2-f4f3-5b9028f31758"
        }
    }
}
```

### Example 4: When invalid goalsOrganizationId is passed

#### Request

Following is an example of the request.

``` http
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-Type: application/json

{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

#### Response

``` http
HTTP/1.1 400 Bad Request 
Content-type: application/json

{
    "error": {
        "code": "badRequest",
        "message": "'GoalsOrganizationId' must be specified in 'Export Job', and it should be a valid GUID.",
        "innerError": {
            "code": "invalidGoalsOrganizationId",
            "date": "2023-11-03T07:20:43",
            "request-id": "4735e72d-a8f4-4877-a06e-804755b0f139",
            "client-request-id": "1577c765-72d7-6b26-3400-fd9d2806f4fd"
        }
    }
}
```

## See also

### Obtaining goalsOrganizationId and explorerViewId
To obtain the goalsOrganizationId and explorerViewId, you can extract them from the URL of a saved explorerView:

``` http
https://goals.microsoft.com/org_uuid/94a356ab-53d5-40e7-8a85-053d6d3b9eb3/objective-explorer?viewId=e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e
```
- The org_uuid in the URL, specifically, `94a356ab-53d5-40e7-8a85-053d6d3b9eb3`, represents the `goalsOrganizationId`.

- The viewId in the URL, specifically, `e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e` represents the `explorerViewId`.

So, you can identify the goalsOrganizationId as 94a356ab-53d5-40e7-8a85-053d6d3b9eb3, and the explorerViewId as e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e from this URL.