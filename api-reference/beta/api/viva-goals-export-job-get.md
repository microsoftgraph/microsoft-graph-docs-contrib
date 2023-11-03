---
title: "Poll Resource"
description: "Get the status of an exportJob in Viva Goals."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Poll Resource

Namespace: microsoft.graph

Get the status of an [exportJob](../resources/viva-goals-export-job.md) in Viva Goals.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request
Get the status of an [exportJob](../resources/viva-goals-export-job.md):

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

If successful, this method returns a `200 OK` response code and a [exportJob](../resources/viva-goals-export-job.md) item in the response body. 

## Response headers

| Name        | Description     |
|:------------|:----------------|
|Retry-after  | Duration in seconds. Optional.|

## Example
#### Request
Following is an example of a request.

```text
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

##### Status is "running"

```text
HTTP/1.1 200 OK 
Retry-After: 60
Content-type: application/json
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU",
    "createdDateTime": "2023-11-02T23:53:02.051Z",
    "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU/content",
    "status": "running",
    "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
    "explorerViewId": "f5b62cb2-5e35-4ba1-862d-9c6cf0c88830",
    "expirationDateTime": "2023-11-03T23:53:07.99Z"
}
```

##### Status is "completed"

```text
HTTP/1.1 200 OK 
Content-type: application/json
```

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU",
    "createdDateTime": "2023-11-02T23:53:02.051Z",
    "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU/content",
    "status": "succeeded",
    "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
    "explorerViewId": "f5b62cb2-5e35-4ba1-862d-9c6cf0c88830",
    "expirationDateTime": "2023-11-03T23:53:07.99Z"
}
```

#### Specified exportJob not found

```text
HTTP/1.1 404 Not Found 
Content-type: application/json
```

```json
{
    "error": {
        "code": "notFound",
        "message": "Specified export job not found",
        "innerError": {
            "code": "exportJobNotFound",
            "date": "2023-11-03T06:26:12",
            "request-id": "d9c357cd-3e01-4e87-87d8-16cff86276ca",
            "client-request-id": "2251aa06-e44a-586e-0a6b-180aa2f7723a"
        }
    }
}
```

#### Invalid exportJobId is passed

```text
HTTP/1.1 400 Bad Request
Content-type: application/json
```

```json
{
    "error": {
        "code": "badRequest",
        "message": "Invalid JobKey specified",
        "innerError": {
            "code": "unknown",
            "date": "2023-11-03T07:22:34",
            "request-id": "197e5728-0208-4af0-8470-199c185d0b54",
            "client-request-id": "4b33efe5-f93a-0dc7-5711-0b7a43b8e96d"
        }
    }
}
```