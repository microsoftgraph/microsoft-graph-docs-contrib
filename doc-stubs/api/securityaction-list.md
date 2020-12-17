---
title: "List securityActions"
description: "Get a list of the securityAction objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List securityActions
Namespace: microsoft.graph

Get a list of the [securityAction](../resources/securityaction.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/securityActions
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

If successful, this method returns a `200 OK` response code and a collection of [securityAction](../resources/securityaction.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_securityaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/securityActions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.securityAction",
      "id": "c9613460-3460-c961-6034-61c9603461c9",
      "actionReason": "String",
      "appId": "String",
      "azureTenantId": "String",
      "clientContext": "String",
      "completedDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "errorInfo": {
        "@odata.type": "microsoft.graph.resultInfo"
      },
      "lastActionDateTime": "String (timestamp)",
      "name": "String",
      "parameters": [
        {
          "@odata.type": "microsoft.graph.keyValuePair"
        }
      ],
      "states": [
        {
          "@odata.type": "microsoft.graph.securityActionState"
        }
      ],
      "status": "String",
      "user": "String",
      "vendorInformation": {
        "@odata.type": "microsoft.graph.securityVendorInformation"
      }
    }
  ]
}
```

