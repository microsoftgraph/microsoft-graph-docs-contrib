---
title: "List superServerlessFunctionFindings"
description: "Get a list of the superServerlessFunctionFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List superServerlessFunctionFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.superServerlessFunctionFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/graph.superServerlessFunctionFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.superServerlessFunctionFinding
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) objects in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the LIST method filter uses a bad key.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_superserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.superServerlessFunctionFinding not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.superServerlessFunctionFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.superServerlessFunctionFinding",
      "id": "fc5d7e58-3208-f5de-6f77-e8eae196a7da",
      "createdDateTime": "String (timestamp)",
      "permissionsCreepIndex": {
        "@odata.type": "microsoft.graph.permissionsCreepIndex"
      },
      "lastActiveDateTime": "String (timestamp)",
      "actionSummary": {
        "@odata.type": "microsoft.graph.actionSummary"
      }
    }
  ]
}
```

