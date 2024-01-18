---
title: "Update relyingPartyDetailedSummary"
description: "Update the properties of a relyingPartyDetailedSummary object."
author: "gmcnamara-microsoft"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Update relyingPartyDetailedSummary

Namespace: microsoft.graph



Update the properties of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "relyingpartydetailedsummary-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/relyingpartydetailedsummary-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /relyingPartyDetailedSummary
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|relyingPartyId|String|**TODO: Add Description** Required.|
|serviceId|String|**TODO: Add Description** Required.|
|relyingPartyName|String|**TODO: Add Description** Required.|
|successfulSignInCount|Int64|**TODO: Add Description** Required.|
|failedSignInCount|Int64|**TODO: Add Description** Required.|
|totalSignInCount|Int64|**TODO: Add Description** Required.|
|signInSuccessRate|Double|**TODO: Add Description** Required.|
|uniqueUserCount|Int64|**TODO: Add Description** Required.|
|migrationStatus|migrationStatus|**TODO: Add Description**. The possible values are: `ready`, `needsReview`, `additionalStepsRequired`, `unknownFutureValue`. Required.|
<!--|migrationValidationDetails|[keyValuePair](../resources/intune-keyvaluepair.md) collection|**TODO: Add Description** Required.|-->
|replyUrls|String collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_relyingpartydetailedsummary"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/relyingPartyDetailedSummary
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
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
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

