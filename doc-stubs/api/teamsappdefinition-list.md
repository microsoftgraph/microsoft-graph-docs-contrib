---
title: "List teamsAppDefinitions"
description: "Get a list of the teamsAppDefinition objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List teamsAppDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamsAppDefinition](../resources/teamsappdefinition.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /chats/{chatsId}/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions
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

If successful, this method returns a `200 OK` response code and a collection of [teamsAppDefinition](../resources/teamsappdefinition.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_teamsappdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/{chatsId}/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAppDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAppDefinition",
      "id": "c888c02f-c02f-c888-2fc0-88c82fc088c8",
      "allowedInstallationScopes": "String",
      "azureADAppId": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "description": "String",
      "displayName": "String",
      "lastModifiedDateTime": "String (timestamp)",
      "publishingState": "String",
      "requiredResourceSpecificApplicationPermissions": [
        "String"
      ],
      "serializedInternalDefinition": "String",
      "shortdescription": "String",
      "teamsAppId": "String",
      "version": "String"
    }
  ]
}
```

