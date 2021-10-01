---
title: "Create userSettings"
description: "Create a new userSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [userSettings](../resources/usersettings.md) object.

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
POST ** Collection URI for microsoft.graph.userSettings not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userSettings](../resources/usersettings.md) object.

The following table shows the properties that are required when you create the [userSettings](../resources/usersettings.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|**TODO: Add Description**|
|contributionToContentDiscoveryDisabled|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [userSettings](../resources/usersettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_usersettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.userSettings not found
Content-Type: application/json
Content-length: 180

{
  "@odata.type": "#microsoft.graph.userSettings",
  "contributionToContentDiscoveryAsOrganizationDisabled": "Boolean",
  "contributionToContentDiscoveryDisabled": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userSettings"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userSettings",
  "id": "5c50287b-287b-5c50-7b28-505c7b28505c",
  "contributionToContentDiscoveryAsOrganizationDisabled": "Boolean",
  "contributionToContentDiscoveryDisabled": "Boolean"
}
```

