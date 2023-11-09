---
title: "List goalsExportJobs"
description: "Get a list of the goalsExportJob objects and their properties in a Viva Goals organization."
author: "istyagiit"
ms.localizationpriority: medium
ms.prod: "vivagoals"
doc_type: apiPageType
---

# List goalsExportJobs
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [goalsExportJob](../resources/goalsexportjob.md) objects and their properties in a Viva Goals organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
This method supports the `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


`$filter` is supported on the **goalsOrganizationId** property only.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| Accept  | application/json|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [goalsExportJob](../resources/goalsexportjob.md) objects in the response body.

## Examples

### Example 1: Response on Search
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.vivaGoals.goalsExportJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.vivaGoals.goalsExportJob",
      "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
      "createdDateTime": "String (timestamp)",
      "status": "String",
      "resourceLocation": "String",
      "goalsOrganizationId": "String",
      "explorerViewId": "String",
      "expirationDateTime": "String (timestamp)",
    }
  ]
}
```

### Example 2: Filter response based on `goalsOrganizationId`
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.vivaGoals.goalsExportJob)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.vivaGoals.goalsExportJob",
      "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
      "createdDateTime": "String (timestamp)",
      "status": "String",
      "resourceLocation": "String",
      "goalsOrganizationId": "3d9a8150-90fd-42bd-9777-25ba783d4a05",
      "explorerViewId": "String",
      "expirationDateTime": "String (timestamp)",
    }
  ]
}
```

### Example 3: Filter response based on any property other than `goalsOrganizationId`. 
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_goalsexportjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs?$filter= explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’ 
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.vivaGoals.goalsExportJob)"
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

