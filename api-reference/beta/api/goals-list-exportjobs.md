---
title: "List exportJobs"
description: "Get a list of goalsExportJob objects and their properties in a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "employee-goals"
doc_type: apiPageType
---

# List exportJobs
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [goalsExportJob](../resources/goalsexportjob.md) objects and their properties in a Viva Goals organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "goals-list-exportjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/goals-list-exportjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/goals/exportJobs
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. The `$filter` OData query parameter is supported on the **goalsOrganizationId** property only.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [goalsExportJob](../resources/goalsexportjob.md) objects in the response body.

## Examples

### Example 1: List exportJobs  
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob1"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.goalsExportJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.goalsExportJob",
      "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
      "status": "succeeded", 
      "goalsOrganizationId": "9ab0fcab-c1d4-4b26-963b-a3c33155f853", 
      "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
      "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content", 
      "createdDateTime": "2023-06-19T12-06-03.0024Z", 
      "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
    }
  ]
}
```

### Example 2: Filter response based on `goalsOrganizationId`
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob2"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.goalsExportJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.goalsExportJob",
      "id": "fyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0", 
      "status": "succeeded", 
      "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05", 
      "explorerViewId": "2c8b5fd3-67c3-4677-8eb3-e0066c4d2fd7", 
      "resourceLocation": "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/fyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0/content", 
      "createdDateTime": "2023-06-19T12-06-03.0024Z", 
      "expirationDateTime": "2023-07-29T12-06-03.0024Z" 
    }
  ]
}
```

### Example 3: Filter response based on any property other than `goalsOrganizationId` 
#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob3"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’ 
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
        "message": "Invalid filter keys found: explorerViewId",
        "innerError": {
            "code": "unknown",
            "date": "String (timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

