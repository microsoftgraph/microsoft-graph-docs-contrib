---
title: "Update teamsAppDefinition"
description: "Update the properties of a teamsAppDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsAppDefinition
Namespace: microsoft.graph

Update the properties of a [teamsAppDefinition](../resources/teamsappdefinition.md) object.

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
PATCH /users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsAppDefinition
PATCH /users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsApp/appDefinitions/{teamsAppDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsAppDefinition](../resources/teamsappdefinition.md) object.

The following table shows the properties that are required when you create the [teamsAppDefinition](../resources/teamsappdefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|teamsAppId|String|**TODO: Add Description**|
|azureADAppId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|
|requiredResourceSpecificApplicationPermissions|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsAppDefinition](../resources/teamsappdefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsappdefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/users/{usersId}/teamwork/installedApps/{teamsAppInstallationId}/teamsAppDefinition
Content-Type: application/json
Content-length: 243

{
  "@odata.type": "#microsoft.graph.teamsAppDefinition",
  "teamsAppId": "String",
  "azureADAppId": "String",
  "displayName": "String",
  "version": "String",
  "requiredResourceSpecificApplicationPermissions": [
    "String"
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.teamsAppDefinition",
  "id": "1cb2abe6-abe6-1cb2-e6ab-b21ce6abb21c",
  "teamsAppId": "String",
  "azureADAppId": "String",
  "displayName": "String",
  "version": "String",
  "requiredResourceSpecificApplicationPermissions": [
    "String"
  ]
}
```

