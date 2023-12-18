---
title: "List azureServicePrincipals"
description: "Get a list of the azureServicePrincipal objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List azureServicePrincipals
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [azureServicePrincipal](../resources/azureserviceprincipal.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/servicePrincipals
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureServicePrincipal](../resources/azureserviceprincipal.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azureserviceprincipal"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/servicePrincipals
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-azureserviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azureserviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureServicePrincipal)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "NDVjM2I2YmYtNTBjNS00MmQyLWJkNmItMGNjY2ZjZmE2NjNl",
      "externalId": "45c3b6bf-50c5-42d2-bd6b-0cccfcfa663e",
      "displayName": "Management",
      "source": {
          "@odata.type": "#microsoft.graph.azureSource",
          "identityProviderType": "azure",
          "subscriptionId": "2c47abb7-ade6-4700-9a19-ac8c191a2ab8"
      }
    },
    {
      "id": "YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4",
      "externalId": "abd635e5-5528-4565-8caf-f2c60f4f80f8",
      "displayName": "3p-app",
      "source": {
          "@odata.type": "#microsoft.graph.azureSource",
          "identityProviderType": "azure",
          "subscriptionId": "2c47abb7-ade6-4700-9a19-ac8c191a2ab8"
      }
    }
  ]
}
```

