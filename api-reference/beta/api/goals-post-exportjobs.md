---
title: "Create goalsExportJob"
description: "Create a new goalsExportJob object in a Viva Goals organization."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "viva-goals"
doc_type: apiPageType
---

# Create goalsExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [goalsExportJob](../resources/goalsexportjob.md) object in a Viva Goals organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "goals-post-exportjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/goals-post-exportjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /employeeExperience/goals/exportJobs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [goalsExportJob](../resources/goalsexportjob.md) object.

You can specify the following properties when you create a **goalsExportJob** object.

|Property|Type|Description|
|:---|:---|:---|
|goalsOrganizationId|String|The unique identifier of the goals organization.|
|explorerViewId|String|The unique identifier of the explorer view to be exported.|



## Response

If successful, this method returns a `201 Created` response code and a [goalsExportJob](../resources/goalsexportjob.md) object in the response body.

This method also returns `409 Conflict` when you attempt to create a [goalsExportJob](../resources/goalsexportjob.md) object with the same properties (**goalsOrganizationId** and **explorerViewId**) as an existing [goalsExportJob](../resources/goalsexportjob.md) object that is pending completion. 

When the pending job completes, you can create the new [goalsExportJob](../resources/goalsexportjob.md) object.

### Response headers

| Name        | Description     |
|:------------|:----------------|
|Location     | URL to call to check the status of the operation. Required.|

## Examples

### Example 1: Status is `notStarted`

#### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "create_goalsexportjob_from_1"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
Content-Type: application/json

{
  "goalsOrganizationId": "String",
  "explorerViewId": "String"
}
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
HTTP/1.1 201 Created
Content-Type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU"

{
  "@odata.type": "#microsoft.graph.goalsExportJob",
  "id": "9eb0bfa0-eaa1-b225-1f83-54ae3e711753",
  "createdDateTime": "String (timestamp)",
  "status": "String"
}
```

### Example 2: Status is `conflicting`

#### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "create_goalsexportjob_from_2"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
Content-Type: application/json

{
  "goalsOrganizationId": "String",
  "explorerViewId": "String"
}
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
HTTP/1.1 409 Conflict
Content-type: application/json
Location: "https://graph.microsoft.com/beta/employeeexperience/goals/exportJobs/j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU"

{
    "error": 
    {
        "code": "notAllowed",
        "message": "Another export job is still active or waiting to be executed",
        "target": "j!uJJZyGd87hGFgvZV8bl-GlCBmj39kL1Cl3clung9SgU",
        "innererror":
        {
            "code": "exportJobAlreadyExists",
            "date": "String (timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 3:  Specified goalsOrganizationId doesn't exist

#### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "create_goalsexportjob_from_3"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
Content-Type: application/json

{
  "goalsOrganizationId": "String",
  "explorerViewId": "String"
}
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
HTTP/1.1 404 Not Found 
Content-type: application/json

{
    "error": {
        "code": "notFound",
        "message": "Goals organization not found",
        "innerError": {
            "code": "goalsOrganizationIdNotFound",
            "date": "String (timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

### Example 4:  Invalid goalsOrganizationId is passed

#### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "create_goalsexportjob_from_4"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/goals/exportJobs
Content-Type: application/json

{
  "goalsOrganizationId": "String",
  "explorerViewId": "String"
}
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
        "message": "'GoalsOrganizationId' must be specified in 'Export Job', and it should be a valid GUID.",
        "innerError": {
            "code": "invalidGoalsOrganizationId",
            "date": "String (timestamp)",
            "request-id": "String",
            "client-request-id": "String"
        }
    }
}
```

## See also

### Obtaining goalsOrganizationId and explorerViewId
To obtain the goalsOrganizationId and explorerViewId, you can extract them from the URL of a saved explorerView:

``` http
https://goals.microsoft.com/org_uuid/94a356ab-53d5-40e7-8a85-053d6d3b9eb3/objective-explorer?viewId=e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e
```
- The org_uuid in the URL, specifically, `94a356ab-53d5-40e7-8a85-053d6d3b9eb3`, represents the `goalsOrganizationId`.

- The viewId in the URL, specifically, `e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e` represents the `explorerViewId`.

So, you can identify the goalsOrganizationId as 94a356ab-53d5-40e7-8a85-053d6d3b9eb3, and the explorerViewId as e5e7a3c1-8cdf-409d-9ce9-ff730d65d95e from this URL.
