---
title: "List azureAuthorizationSystemTypeActions"
description: "List the azureAuthorizationSystemTypeAction objects and their properties."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List azureAuthorizationSystemTypeActions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/actions
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects in the response body.

## Examples

### Example 1: List Azure Actions For A Specific Service

Returns collection of all azureAuthorizationSystemTypeAction entities for a provided Azure authorization system and service the action is performed on. Listing actions for an Azure subscription "e160b34b-2a0f-41f6-aaf3-09c5a9f43768" and service "Microsoft.Storage".

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_azureauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage'
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage'",
  "value": [
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvY2hlY2tuYW1lYXZhaWxhYmlsaXR5L3JlYWQ=",
      "externalId": "Microsoft.Storage/checknameavailability/read",
      "resourceTypes": ["checknameavailability"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvbG9jYXRpb25zL2RlbGV0ZVZpcnR1YWxOZXR3b3JrT3JTdWJuZXRzL2FjdGlvbg==",
      "externalId": "Microsoft.Storage/locations/deleteVirtualNetworkOrSubnets/action",
      "resourceTypes": ["locations"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2Uvb3BlcmF0aW9ucy9yZWFk",
      "externalId": "Microsoft.Storage/operations/read",
      "resourceTypes": ["operations"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    }
  ]
}
```

