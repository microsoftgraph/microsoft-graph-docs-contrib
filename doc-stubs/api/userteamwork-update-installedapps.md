---
title: "Update installedApps"
description: "Update the properties of an installedApps object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update installedApps
Namespace: microsoft.graph

Update the properties of an installedApps object.

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
PATCH /users/{usersId}/teamwork/installedApps
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsAppInstallation](../resources/teamsappinstallation.md) object.

The following table shows the properties that are required when you create the [teamsAppInstallation](../resources/teamsappinstallation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|grantedResourceSpecificApplicationPermissions|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsAppInstallation](../resources/teamsappinstallation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_installedapps"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/users/{usersId}/teamwork/installedApps
Content-Type: application/json
Content-length: 136

{
  "@odata.type": "#microsoft.graph.teamsAppInstallation",
  "grantedResourceSpecificApplicationPermissions": [
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
  "@odata.type": "#microsoft.graph.teamsAppInstallation",
  "id": "36fb25fa-25fa-36fb-fa25-fb36fa25fb36",
  "grantedResourceSpecificApplicationPermissions": [
    "String"
  ]
}
```

