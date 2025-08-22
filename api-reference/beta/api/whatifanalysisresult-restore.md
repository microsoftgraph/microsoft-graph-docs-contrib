---
title: "whatIfAnalysisResult: restore"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# whatIfAnalysisResult: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "whatifanalysisresult-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/whatifanalysisresult-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /whatIfAnalysisResult/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "whatifanalysisresultthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/whatIfAnalysisResult/restore
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
    "deletedDateTime": "String (timestamp)",
    "id": "String (identifier)",
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)",
    "displayName": "String",
    "description": "String",
    "state": "String",
    "conditions": {
      "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
    },
    "grantControls": {
      "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
    },
    "sessionControls": {
      "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
    }
  }
}
```

