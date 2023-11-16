---
title: "Get goalsExportJob"
description: "Get the status of a goalsExportJob object in a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva"
doc_type: apiPageType
---

# Get goalsExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of a [goalsExportJob](../resources/goalsexportjob.md) object in a Viva Goals organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
|Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [goalsExportJob](../resources/goalsexportjob.md) object in the response body.

### Response headers

| Name        | Description     |
|:------------|:----------------|
|Retry-after  | Duration in seconds. Optional.|

## Examples

### Example 1: Status is `running`

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goalsexportjob1"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}
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
    "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
    "createdDateTime": "String (timestamp)",
    "status": "String",
    "goalsOrganizationId": "String",
    "explorerViewId": "String",
    "expirationDateTime": "String (timestamp)",
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
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}
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
    "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
    "createdDateTime": "String (timestamp)",
    "status": "String",
    "resourceLocation": "String",
    "goalsOrganizationId": "String",
    "explorerViewId": "String",
    "expirationDateTime": "String (timestamp)",
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
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}
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
    "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
    "createdDateTime": "String (timestamp)",
    "status": "String",
    "goalsOrganizationId": "String",
    "explorerViewId": "String",
    "expirationDateTime": "String (timestamp)",
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
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}
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
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}
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
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs/{goalsExportJobId}/content
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

