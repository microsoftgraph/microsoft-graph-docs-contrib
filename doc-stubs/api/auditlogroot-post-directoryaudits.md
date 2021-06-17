---
title: "Create directoryAudit"
description: "Create a new directoryAudit object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create directoryAudit
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new directoryAudit object.

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

The following table shows the properties that are required when you create the [directoryAudit](../resources/directoryaudit.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|category|String|**TODO: Add Description**|
|correlationId|String|**TODO: Add Description**|
|result|operationResult|**TODO: Add Description**. Possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`.|
|resultReason|String|**TODO: Add Description**|
|activityDisplayName|String|**TODO: Add Description**|
|activityDateTime|DateTimeOffset|**TODO: Add Description**|
|loggedByService|String|**TODO: Add Description**|
|operationType|String|**TODO: Add Description**|
|initiatedBy|[Microsoft.AAD.Reporting.auditActivityInitiator](../resources/auditactivityinitiator.md)|**TODO: Add Description**|
|targetResources|[Microsoft.AAD.Reporting.targetResource](../resources/targetresource.md) collection|**TODO: Add Description**|
|additionalDetails|[Microsoft.AAD.Reporting.keyValue](../resources/keyvalue.md) collection|**TODO: Add Description**|



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
Content-length: 595

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
```

