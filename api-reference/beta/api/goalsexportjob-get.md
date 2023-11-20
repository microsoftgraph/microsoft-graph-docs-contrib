---
title: "Get goalsExportJob"
description: "Get the properties of a goalsExportJob object in a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "employee-goals"
doc_type: apiPageType
---

# Get goalsExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a [goalsExportJob](../resources/goalsexportjob.md) object in a Viva Goals organization.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "goalsexportjob-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/goalsexportjob-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/goals/exportJobs/{goalsExportJobId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For example, to select the specific properties (columns), add `$select=id,goalsOrganizationId`. 

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [goalsExportJob](../resources/goalsexportjob.md) object in the response body.

### Response headers

| Name        | Description     |
|:------------|:----------------|
|Retry-after  | Duration in seconds. Optional.|

## Examples
The following examples show how to poll a **goalsExportJob** for a Viva Goals [Explorer view](/viva/goals/explorer#default-views-in-explorer) and the different responses that are returned.

### Example 1: Status is `running`

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob1"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Retry-After: 60
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "running", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```

### Example 2: Status is `succeeded`

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob2"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "succeeded", 
    "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```


### Example 3: Status is `notStarted`

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob3"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goalsExportJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.goalsExportJob",
    "id": "j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
    "status": "notStarted", 
    "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
    "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
    "createdDateTime": "2023-06-19T12-06-03.0024Z", 
    "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
  }
}
```

### Example 4: Specified goalsExportJobId isn't found

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob4"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In1
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->
``` http
HTTP/1.1 404 Not Found 
Content-type: application/json

{
    "error": {
        "code": "notFound",
        "message": "Specified export job not found",
        "innerError": {
            "code": "exportJobNotFound",
            "date": "String (Timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 5: Invalid exportJobId is specified

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMj
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->
``` http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "badRequest",
        "message": "Invalid JobKey specified",
        "innerError": {
            "code": "unknown",
            "date": "String (Timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 6: Get the content of a successfully completed goalsExportJob resource

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob_content"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content
```


#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK 
Content-type: text/csv

{ 
  Model as EDM.Stream
} 
```

