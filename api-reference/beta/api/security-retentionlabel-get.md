---
title: "Get retentionLabel"
description: "Read the properties and relationships of a retentionLabel object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get retentionLabel
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [retentionLabel](../resources/security-retentionlabel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/retentionLabels/{retentionLabelId}
GET /security/triggers/retentionEvents/{retentionEventId}/labels/{retentionLabelId}
```

## Optional query parameters
This method supports the expand OData query parameters to help customize the response.  For example, to retrieve the **retentionEventType** property, you can use the `expand` parameter:`$expand=retentionEventType`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_retentionlabel"
}
-->
``` http
GET  https://graph.microsoft.com/beta/security/labels/retentionLabels/{retentionLabelId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-retentionlabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-retentionlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-retentionlabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-retentionlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-retentionlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-retentionlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.retentionLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.retentionLabel",
    "id": "64a99fb4-07be-0481-8746-44c15c0eef1f",
    "displayName": "String",
    "behaviorDuringRetentionPeriod": "String",
    "actionAfterRetentionPeriod": "String",
    "retentionTrigger": "String",
    "retentionDuration": {
      "@odata.type": "microsoft.graph.security.retentionDuration"
    },
    "isInUse": "Boolean",
    "descriptionForAdmins": "String",
    "descriptionForUsers": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "labelToBeApplied": "String",
    "defaultRecordBehavior": "String"
  }
}
```

