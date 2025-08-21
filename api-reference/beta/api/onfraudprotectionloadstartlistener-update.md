---
title: "Update onFraudProtectionLoadStartListener"
description: "Update the properties of an onFraudProtectionLoadStartListener object."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update onFraudProtectionLoadStartListener

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an onFraudProtectionLoadStartListener object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onfraudprotectionloadstartlistener-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onfraudprotectionloadstartlistener-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /onFraudProtectionLoadStartListener
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Required.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|authenticationEventsFlowId|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|handler|[onFraudProtectionLoadStartHandler](../resources/onfraudprotectionloadstarthandler.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [onFraudProtectionLoadStartListener](../resources/onfraudprotectionloadstartlistener.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onfraudprotectionloadstartlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onFraudProtectionLoadStartListener
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onFraudProtectionLoadStartHandler"
  }
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
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener",
  "id": "bfb394b8-c495-fda8-d381-265a9cfae0fe",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onFraudProtectionLoadStartHandler"
  }
}
```

