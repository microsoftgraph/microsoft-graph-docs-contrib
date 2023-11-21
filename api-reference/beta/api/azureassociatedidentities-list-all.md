---
title: "List all (Azure identities)"
description: "Get a list of the azureIdentity objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List all (Azure identities)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [azureIdentity](../resources/azureidentity.md) objects and their properties.

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
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureIdentity](../resources/azureidentity.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_azureidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureIdentity)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.azureUser",
      "id": "YWxpY2VAY29udG9zby5jb20",
      "externalId": "alice@contoso.com",
      "displayName": "alice",
      "source": {
          "@odata.type": "#microsoft.graph.aadSource",
          "domain": "contoso.com",
          "identityProviderType": "aad"
      }
    },
    {
      "@odata.type": "#microsoft.graph.azureServicePrincipal",
      "id": "NDVjM2I2YmYtNTBjNS00MmQyLWJkNmItMGNjY2ZjZmE2NjNl",
      "externalId": "45c3b6bf-50c5-42d2-bd6b-0cccfcfa663e",
      "displayName": "Test Application",
      "source": {
        "@odata.type": "#microsoft.graph.azureSource",
        "identityProviderType": "azure",
        "subscriptionId": "2c47abb7-ade6-4700-9a19-ac8c191a2ab8"
      }
    },
    {
      "@odata.type": "#microsoft.graph.azureManagedIdentity",
      "id": "YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4",
      "externalId": "abd635e5-5528-4565-8caf-f2c60f4f80f8",
      "displayName": "managedIdentity2",
      "source": {
        "@odata.type": "#microsoft.graph.azureSource",
        "identityProviderType": "azure",
        "subscriptionId": "00f7dcae-97f9-492b-af2e-36eb35b613af"
      }
    }
  ]
}
```

