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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of an [exportJob](../resources/exportjob.md)  in Viva Goals.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request

```http
GET /employeeExperience/goals/exportJobs/{jobId}
```

## Optional query parameters

This method supports the `$select` OData query parameters to help customize the response. For example, to select the specific properties (columns), add `$select=id,goalsOrganizationId`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name          | Description   |
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [exportJob](../resources/exportjob.md) item in the response body. 

## Examples

### Example 1: Status is "running"

#### Request

Following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

Following is an example of the response.

``` http
HTTP/1.1 200 OK 
Retry-After: 60
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU",
    "createdDateTime": "2023-11-02T23:53:02.051Z",
    "status": "running",
    "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
    "explorerViewId": "f5b62cb2-5e35-4ba1-862d-9c6cf0c88830",
    "expirationDateTime": "2023-11-03T23:53:07.99Z"
}
```
### Example 2: Status is "succeeded"

#### Request

Following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

Following is an example of the response.

``` http
HTTP/1.1 200 OK 
Content-type: application/json

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

### Example 3: Status is "notStarted"

#### Request

Following is an example of a request.
``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

Following is an example of the response.

``` http
HTTP/1.1 200 OK 
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/goals/exportJobs/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/goals/exportJobs('<key>')?$select=content,expirationDateTime",
    "id": "j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU",
    "createdDateTime": "2023-11-02T23:53:02.051Z",
    "status": "notStarted",
    "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
    "explorerViewId": "f5b62cb2-5e35-4ba1-862d-9c6cf0c88830",
    "expirationDateTime": "2023-11-03T23:53:07.99Z"
}
```

### Example 4: Specified exportJobId not found

#### Request

Following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

Following is an example of the response.

``` http
HTTP/1.1 404 Not Found 
Content-type: application/json

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

### Example 5: Invalid exportJobId is specified

#### Request

Following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!kmZP9dp57hGB_7KuYfi6DlCBmj39kL1Cl3clung9SgU
```

#### Response

Following is an example of the response.

``` http
HTTP/1.1 400 Bad Request
Content-type: application/json

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