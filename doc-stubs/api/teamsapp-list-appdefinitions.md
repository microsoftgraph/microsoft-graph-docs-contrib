---
title: "List appDefinitions"
description: "Get the teamsAppDefinition resources from the appDefinitions navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List appDefinitions
Namespace: microsoft.graph

Get the teamsAppDefinition resources from the appDefinitions navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
GET /users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions
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
  "name": "get_teamsappdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.teamsAppDefinition)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.teamsAppDefinition",
      "id": "1cb2abe6-abe6-1cb2-e6ab-b21ce6abb21c",
      "teamsAppId": "String",
      "azureADAppId": "String",
      "displayName": "String",
      "version": "String",
      "requiredResourceSpecificApplicationPermissions": [
        "String"
      ]
    }
  ]
}
```

