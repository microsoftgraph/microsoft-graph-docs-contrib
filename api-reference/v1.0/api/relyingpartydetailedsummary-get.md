---
title: "Get relyingPartyDetailedSummary"
description: "Read the properties and relationships of a relyingPartyDetailedSummary object."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Get relyingPartyDetailedSummary

Namespace: microsoft.graph



Read the properties and relationships of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "relyingpartydetailedsummary-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/relyingpartydetailedsummary-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /relyingPartyDetailedSummary
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_relyingpartydetailedsummary"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/relyingPartyDetailedSummary
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
    "id": "bff5a169-eeb4-5159-b7f6-c5bb9464a6ca",
    "relyingPartyId": "String",
    "serviceId": "String",
    "relyingPartyName": "String",
    "successfulSignInCount": "Integer",
    "failedSignInCount": "Integer",
    "totalSignInCount": "Integer",
    "signInSuccessRate": "Double",
    "uniqueUserCount": "Integer",
    "migrationStatus": "String",
    "migrationValidationDetails": [
      {
        "@odata.type": "microsoft.graph.keyValuePair"
      }
    ],
    "replyUrls": [
      "String"
    ]
  }
}
```

