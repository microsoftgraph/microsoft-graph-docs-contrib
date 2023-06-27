---
title: "List detectionRules"
description: "Get a list of the microsoft.graph.security.detectionRule objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List detectionRules
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.security.detectionRule not found
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

If successful, this method returns a `200 OK` response code and a collection of [detectionRule](../resources/detectionrule.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_detectionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.security.detectionRule not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.detectionRule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.detectionRule",
      "id": "4790e8ec-9488-3dde-c3a6-be0c4ba14cf9",
      "displayName": "String",
      "isEnabled": "Boolean",
      "createdBy": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": "String",
      "queryCondition": {
        "@odata.type": "microsoft.graph.security.queryCondition"
      },
      "schedule": {
        "@odata.type": "microsoft.graph.security.ruleSchedule"
      },
      "lastRunDetails": {
        "@odata.type": "microsoft.graph.security.runDetails"
      },
      "detectionAction": {
        "@odata.type": "microsoft.graph.security.detectionAction"
      }
    }
  ]
}
```

