---
title: "Get externalUsersSelfServiceSignUpEventsFlow"
description: "Read the properties and relationships of an externalUsersSelfServiceSignUpEventsFlow object."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get externalUsersSelfServiceSignUpEventsFlow

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalusersselfservicesignupeventsflow-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalusersselfservicesignupeventsflow-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /externalUsersSelfServiceSignUpEventsFlow
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

If successful, this method returns a `200 OK` response code and an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_externalusersselfservicesignupeventsflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/externalUsersSelfServiceSignUpEventsFlow
```


### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
    "id": "74250661-dd5b-0c0b-b94c-db8a26827bf3",
    "displayName": "String",
    "description": "String",
    "conditions": {
      "@odata.type": "microsoft.graph.authenticationConditions"
    },
    "priority": "Integer",
    "onInteractiveAuthFlowStart": {
      "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
    },
    "onAuthenticationMethodLoadStart": {
      "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
    },
    "onAttributeCollection": {
      "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
    },
    "onAttributeCollectionStart": {
      "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
    },
    "onAttributeCollectionSubmit": {
      "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
    },
    "onUserCreateStart": {
      "@odata.type": "microsoft.graph.onUserCreateStartHandler"
    }
  }
}
```

