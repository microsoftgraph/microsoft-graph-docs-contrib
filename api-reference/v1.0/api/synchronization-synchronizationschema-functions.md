---
title: "synchronizationSchema: functions"
description: "List all the functions currently supported in the attributeMappingSource."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# synchronizationSchema: functions

Namespace: microsoft.graph

List all the functions currently supported in the [attributeMappingSource](../resources/synchronization-attributemappingsource.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Synchronization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application.ReadWrite.OwnedBy, Synchronization.ReadWrite.All|

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema/functions
GET /servicePrincipals/{id}/synchronization/templates/{templateId}/schema/functions
GET /applications/{id}/synchronization/templates/{templateId}/schema/functions
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [attributemappingFunctionSchema](../resources/synchronization-attributemappingfunctionschema.md) objects in the response body.

## Example

##### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "synchronizationschema_functions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema/functions
```


##### Response
The following is an example of a response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned in an actual call.

<!--
{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attributeMappingFunctionSchema",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#functions",
    "value": [
        {
            "name": "Append",
            "parameters": [
                {
                    "allowMultipleOccurrences": false,
                    "name": "source",
                    "required": true,
                    "type": "String"
                },
                {
                    "allowMultipleOccurrences": false,
                    "name": "suffix",
                    "required": true,
                    "type": "String"
                }
            ]
        },
        {
            "name": "DefaultDomain",
            "parameters": []
        },
        {
            "name": "AppRoleAssignments",
            "parameters": [
                {
                    "allowMultipleOccurrences": false,
                    "name": "source",
                    "required": true,
                    "type": "String"
                }
            ]
        },
        {
            "name": "FormatDateTime",
            "parameters": [
                {
                    "allowMultipleOccurrences": false,
                    "name": "source",
                    "required": true,
                    "type": "String"
                },
                {
                    "allowMultipleOccurrences": false,
                    "name": "inputFormat",
                    "required": true,
                    "type": "String"
                },
                {
                    "allowMultipleOccurrences": false,
                    "name": "outputFormat",
                    "required": true,
                    "type": "String"
                }
            ]
        }
    ]
}
```

