---
title: "Create directoryAudit"
description: "Create a new directoryAudit object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create directoryAudit
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [directoryAudit](../resources/directoryaudit.md) object.

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
POST /auditLogs/directoryAudits
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [directoryAudit](../resources/directoryaudit.md) object.

You can specify the following properties when creating a **directoryAudit**.

|Property|Type|Description|
|:---|:---|:---|
|category|String|**TODO: Add Description** Required.|
|correlationId|String|**TODO: Add Description** Optional.|
|result|operationResult|**TODO: Add Description**. The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`. Optional.|
|resultReason|String|**TODO: Add Description** Optional.|
|activityDisplayName|String|**TODO: Add Description** Required.|
|activityDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|loggedByService|String|**TODO: Add Description** Optional.|
|operationType|String|**TODO: Add Description** Optional.|
|initiatedBy|[Microsoft.AAD.Reporting.auditActivityInitiator](../resources/auditactivityinitiator.md)|**TODO: Add Description** Required.|
|targetResources|[Microsoft.AAD.Reporting.targetResource](../resources/targetresource.md) collection|**TODO: Add Description** Optional.|
|userAgent|String|**TODO: Add Description** Optional.|
|additionalDetails|[Microsoft.AAD.Reporting.keyValue](../resources/keyvalue.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [directoryAudit](../resources/directoryaudit.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_directoryaudit_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/directoryAudits
Content-Type: application/json
Content-length: 621

{
  "@odata.type": "#Microsoft.AAD.Reporting.directoryAudit",
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
HTTP/1.1 201 Created
Content-Type: application/json

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
```

