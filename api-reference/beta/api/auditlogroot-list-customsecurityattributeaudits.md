---
title: "List customSecurityAttributeAudits"
description: "Get a list of the customSecurityAttributeAudit objects and their properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List customSecurityAttributeAudits
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) objects and their properties.

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
GET /auditLogs/customSecurityAttributeAudits
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

If successful, this method returns a `200 OK` response code and a collection of [customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributeaudit"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/customSecurityAttributeAudits
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeAudit)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.customSecurityAttributeAudit",
      "id": "e0e78bac-1bbc-257e-d6f1-2e493d362616",
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

