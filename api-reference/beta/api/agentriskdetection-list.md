---
title: "List agentRiskDetections"
description: Retrieve the properties of a collection of agentRiskDetection objects.
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# List agentRiskDetections

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a collection of [agentRiskDetection](../resources/agentriskdetection.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentriskdetection-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentriskdetection-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/agentRiskDetections
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentRiskDetection](../resources/agentriskdetection.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentriskdetection"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/agentRiskDetections
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentRiskDetection"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentRiskDetection",
      "id": "0a2e6958-46cc-353d-8a02-5fe656267792",
      "agentId": "String",
      "agentDisplayName": "String",
      "activityDateTime": "String (timestamp)",
      "detectedDateTime": "String (timestamp)",
      "detectionTimingType": "String",
      "lastModifiedDateTime": "String (timestamp)",
      "riskDetail": "String",
      "riskLevel": "String",
      "riskState": "String",
      "riskEventType": "String",
      "riskEvidence": "String",
      "additionalInfo": "String"
    }
  ]
}
```

