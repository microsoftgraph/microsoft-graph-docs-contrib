---
title: "Get onAttributeCollectionStartCustomExtension"
description: "Read the properties and relationships of an onAttributeCollectionStartCustomExtension object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get onAttributeCollectionStartCustomExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onattributecollectionstartcustomextension-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onattributecollectionstartcustomextension-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /onAttributeCollectionStartCustomExtension
GET /onAttributeCollectionStartCustomExtensionHandler/customExtension
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

If successful, this method returns a `200 OK` response code and an [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_onattributecollectionstartcustomextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/onAttributeCollectionStartCustomExtension
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onAttributeCollectionStartCustomExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtension",
    "id": "83eb353e-c996-5bd1-aea9-68db1f8fde8f",
    "authenticationConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
    },
    "clientConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
    },
    "description": "String",
    "displayName": "String",
    "endpointConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
    },
    "behaviorOnError": {
      "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
    }
  }
}
```

