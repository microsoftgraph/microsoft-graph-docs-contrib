---
title: "Searching for Resources"
description: "Get the list of export jobs."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Searching for Resources

Namespace: microsoft.graph

Get the list of export jobs.

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
This method supports the $filter [OData Query Parameters](/graph/query-parameters) to filter rows.

You can use the `$filter` query parameter to filters rows based on `goalsOrganizationId`. For example:
```text
https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= goalsOrganizationId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’ 
```


## Request headers
| Header       |  Value|
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection [export job](../resources/viva-goals-export-job.md) item in the response body. 

## Example
### 1. Here is an example of the request.
#### Request

```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs 
```

#### Response on Search
If successful, this method returns a `200 OK` response code and a collection of ExportJob entities.

```text
HTTP/1.1 200 OK 
Content-type: application/json
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs?$select=content,expirationDateTime",
    "value": [
        {
            "id": "j!ZIhyMux47hGIdJL2SWgapVCBmj39kL1Cl3clung9SgU",
            "createdDateTime": "2023-11-01T19:23:54.904Z",
            "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!ZIhyMux47hGIdJL2SWgapVCBmj39kL1Cl3clung9SgU/content",
            "status": "succeeded",
            "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a02",
            "explorerViewId": "20df10af-835b-4347-a88d-0db6ee109822",
            "expirationDateTime": "2023-11-02T19:23:56.178Z"
        },
        {
            "id": "j!NlIQDex47hGHcKInRPZkflCBmj39kL1Cl3clung9SgU",
            "createdDateTime": "2023-11-01T19:22:52.185Z",
            "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!NlIQDex47hGHcKInRPZkflCBmj39kL1Cl3clung9SgU/content",
            "status": "succeeded",
            "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a01",
            "explorerViewId": "20df10af-835b-4347-a88d-0db6ee109822",
            "expirationDateTime": "2023-11-02T19:22:52.547Z"
        }
    ]
}
```
### 2. Filter response based on `goalsOrganizationId`
#### Request
```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= goalsOrganizationId eq ‘3d9a8150-90fd-42bd-9777-25ba783d4a05’ 
```

#### Response
```
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs?$select=content,expirationDateTime",
    "value": [
        {
            "id": "j!ZIhyMux47hGIdJL2SWgapVCBmj39kL1Cl3clung9SgU",
            "createdDateTime": "2023-11-01T19:23:54.904Z",
            "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!ZIhyMux47hGIdJL2SWgapVCBmj39kL1Cl3clung9SgU/content",
            "status": "succeeded",
            "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
            "explorerViewId": "20df10af-835b-4347-a88d-0db6ee109822",
            "expirationDateTime": "2023-11-02T19:23:56.178Z"
        }
    ]
}
```

### 3. Filtering is disabled for properties other than `goalsOrganizationId`. 
#### Request
```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’ 
```
When attempting to use any other property, this method will return a `400 Bad Request` error with the following message:
#### Response
```
{
    "error": {
        "code": "badRequest",
        "message": "Invalid filter keys found: explorerViewId",
        "innerError": {
            "code": "unknown",
            "date": "2023-11-02T08:57:51",
            "request-id": "f8bffa78-1272-48bb-816d-c424a3eadd30",
            "client-request-id": "10cd29b7-837b-6511-3972-13d73344f687"
        }
    }
}
```
