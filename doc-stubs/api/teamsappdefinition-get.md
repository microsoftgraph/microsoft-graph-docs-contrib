---
title: "Get teamsAppDefinition"
description: "Read the properties and relationships of a teamsAppDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get teamsAppDefinition
Namespace: microsoft.graph

Read the properties and relationships of a [teamsAppDefinition](../resources/teamsappdefinition.md) object.

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
GET /users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsAppDefinition
GET /users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions/{teamsAppDefinitionId}
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

If successful, this method returns a `200 OK` response code and a [teamsAppDefinition](../resources/teamsappdefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamsappdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsAppDefinition
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamsAppDefinition"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
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
}
```

