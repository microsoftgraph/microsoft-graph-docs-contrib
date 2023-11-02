---
title: "Create export job"
description: "Create a new export job"
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---
https://microsoft-ce-csi.acrolinx.cloud:443
# Create export job

Namespace: microsoft.graph

Create a new export job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.ReadWrite.All|Goals-Export.ReadWrite.All|


## HTTP request
Create a new export job:

```text
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-type: application/json
```

## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
```json
{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

## Response
```json
{
  "id": "string",
  "status": "string",
  "createdDateTime": "timestamp",
}
```

## Example
#### Request
Here's an example of the create job request.

```text
POST https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
Content-type: application/json
```

```json
{ 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7" 
} 
```

#### Response

##### State is "notStarted"

```text
HTTP/1.1 201 Created 
Content-type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0"
```

```json
{ 
    "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "notStarted",
    "createdDateTime": "2023-06-19T12-06-03.0024Z"
} 
```

##### State is "conflicting"
When you attempt to create an export job with the same properties, such as organization ID and explorer view ID, as an existing job that is pending completion, it results in a 409 conflict. Once the pending job completes, you're allowed to create a new one.

```text
HTTP/1.1 409 Conflict
Content-type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0"
```

```json
{
    "error": 
    {
        "code": "notAllowed",
        "message": "Another export job is still active or waiting to be executed",
        "target": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0",
        "innererror":
        {
            "code": "exportJobAlreadyExists"
        }
    }
}
```
