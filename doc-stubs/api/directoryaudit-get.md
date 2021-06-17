---
title: "Get directoryAudit"
description: "Read the properties and relationships of a directoryAudit object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get directoryAudit
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [directoryAudit](../resources/directoryaudit.md) object.

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
GET /auditLogs/directoryAudits/{directoryAuditId}
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

If successful, this method returns a `200 OK` response code and a [directoryAudit](../resources/directoryaudit.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_directoryaudit"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/directoryAudits/{directoryAuditId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.directoryAudit"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.AAD.Reporting.directoryAudit",
    "id": "1aa061ee-61ee-1aa0-ee61-a01aee61a01a",
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
    "additionalDetails": [
      {
        "@odata.type": "microsoft.graph.keyValue"
      }
    ]
  }
}
```

