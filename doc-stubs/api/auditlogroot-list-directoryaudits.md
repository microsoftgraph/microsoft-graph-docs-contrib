---
title: "List directoryAudits"
description: "Get the directoryAudit resources from the directoryAudits navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List directoryAudits
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the directoryAudit resources from the directoryAudits navigation property.

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
GET /auditLogs/directoryAudits
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

If successful, this method returns a `200 OK` response code and a collection of [directoryAudit](../resources/directoryaudit.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_directoryaudit"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/directoryAudits
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.directoryAudit)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.directoryAudit",
      "id": "d1828c21-8c21-d182-218c-82d1218c82d1",
      "category": "String",
      "correlationId": "String",
      "result": "String",
      "resultReason": "String",
      "activityDisplayName": "String",
      "activityDateTime": "String (timestamp)",
      "loggedByService": "String",
      "operationType": "String",
      "initiatedBy": {
        "@odata.type": "microsoft.graph.auditActivityInitiator"
      },
      "targetResources": [
        {
          "@odata.type": "microsoft.graph.targetResource"
        }
      ],
      "userAgent": "String",
      "additionalDetails": [
        {
          "@odata.type": "microsoft.graph.keyValue"
        }
      ]
    }
  ]
}
```

