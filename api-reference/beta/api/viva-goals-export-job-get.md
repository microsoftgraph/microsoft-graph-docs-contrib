---
title: "Poll Resource"
description: "Get the status of export job"
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Poll Resource

Namespace: microsoft.graph

Get the status of export job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request
Get the status of export job:

```http
GET /employeeExperience/goals/exportJobs/{jobId}
```

## Optional query parameters
This method supports the $select [OData Query Parameters](/graph/query-parameters) to filter properties (columns).

You can use the `$select` query parameter to filters properties. For example:

```
https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!ZIhyMux47hGIdJL2SWgapVCBmj39kL1Cl3clung9SgU?$select=id,goalsOrganizationId
```

## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [export job](../resources/viva-goals-export-job.md) item in the response body. 

## Example
#### Request
Here is an example of the request.

```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```

#### Response

##### State is "running"

```text
HTTP/1.1 200 OK 
Retry-After: 60
Content-type: application/json
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0",
    "status": "running",
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853",
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7",
    "createdDateTime": "2015-06-19T12-01-03.4Z"
}
```

##### State is "completed"

```text
HTTP/1.1 200 OK 
Content-type: application/json
```

```json
{ 
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "succeeded", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
} 
```
