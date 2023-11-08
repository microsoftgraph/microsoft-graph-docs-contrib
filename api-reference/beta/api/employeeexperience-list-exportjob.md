---
title: "List exportJobs"
description: "Get a list of the exportJobs for a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Searching for Resources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [exportJob](../resources/exportjob.md) resources for a Viva Goals organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Goals-Export.Read.All|Goals-Export.ReadWrite.All|

## HTTP request

```http
GET /employeeExperience/goals/exportJobs
```

## Optional query parameters

This method supports the `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


`$filter` is supported on the **goalsOrganizationId** property only.


## Request headers
| Name          | Description   |
|:-------------|:------|
| Authorization  | Bearer {token}. Required.|
| Accept  | application/json|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection [exportJob](../resources/exportjob.md) item in the response body. 

## Examples

### Example 1: Response on Search

#### Request

Following is an example of the request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs
```

#### Response

Following is an example of the response.


``` http
HTTP/1.1 200 OK 
Content-type: application/json

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

### Example 2: Filter response based on `goalsOrganizationId`

#### Request

Following is an example of the request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= goalsOrganizationId eq ‘3d9a8150-90fd-42bd-9777-25ba783d4a05
```

#### Response

Following is an example of the response.


``` http
HTTP/1.1 200 OK 
Content-type: application/json

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


### Example 3: Filter based on any property other than `goalsOrganizationId`. 

#### Request

Following is an example of the request.

``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’ 
```

#### Response

Following is an example of the response.


``` http
HTTP/1.1 400 Bad Request
Content-type: application/json

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
