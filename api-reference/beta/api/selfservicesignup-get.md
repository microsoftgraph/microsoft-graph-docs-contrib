---
title: "Get selfServiceSignUp"
description: "Get a selfServiceSignUp object and its properties."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 06/11/2025
---

# Get selfServiceSignUp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a specific Microsoft Entra External ID user [selfServiceSignUp](../resources/selfservicesignup.md) event for your tenant.  

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "selfservicesignup-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/selfservicesignup-get-permissions.md)]

[!INCLUDE [rbac-self-service-sign-up-apis-read](../includes/rbac-for-apis/rbac-self-service-sign-up-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/signUps/{id}
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [selfserviceSignUp](../resources/selfservicesignup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_selfservicesignup"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/signUps/eff4eb53-712f-778d-8754-3b851876413a
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.selfServiceSignUp"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.selfServiceSignUp",
    "id": "eff4eb53-712f-778d-8754-3b851876413a",
    "appDisplayName": "String",
    "appId": "String",
    "appliedEventListeners": [
      {
        "@odata.type": "microsoft.graph.appliedAuthenticationEventListener"
      }
    ],
    "correlationId": "String",
    "createdDateTime": "String (timestamp)",
    "status": {
      "@odata.type": "microsoft.graph.signUpStatus"
    },
    "signUpStage": "String",
    "signUpIdentity": {
      "@odata.type": "microsoft.graph.signUpIdentity"
    },
    "signUpIdentityProvider": "String",
    "userId": "String"
  }
}
```

