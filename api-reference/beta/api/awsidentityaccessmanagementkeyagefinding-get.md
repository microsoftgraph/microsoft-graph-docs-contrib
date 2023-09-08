---
title: "Get awsIdentityAccessManagementKeyAgeFinding"
description: "Read the properties and relationships of an awsIdentityAccessManagementKeyAgeFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get awsIdentityAccessManagementKeyAgeFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
GET /awsIdentityAccessManagementKeyAgeFinding
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

If successful, this method returns a `200 OK` response code and an [awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_awsidentityaccessmanagementkeyagefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/awsIdentityAccessManagementKeyAgeFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsIdentityAccessManagementKeyAgeFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.awsIdentityAccessManagementKeyAgeFinding",
    "id": "87683db1-4047-8bad-d774-2f7ad04acace",
    "createdDateTime": "String (timestamp)",
    "actionSummary": {
      "@odata.type": "microsoft.graph.actionSummary"
    },
    "status": "String",
    "permissionsCreepIndex": {
      "@odata.type": "microsoft.graph.permissionsCreepIndex"
    }
  }
}
```

