---
title: "Create insightsSettings"
description: "Create a new insightsSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create insightsSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new insightsSettings object.

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
POST /organization/{organizationId}/settings/contactInsights
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [insightsSettings](../resources/insightssettings.md) object.

You can specify the following properties when creating an **insightsSettings**.

|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean|**TODO: Add Description** Optional.|
|disabledForGroup|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [insightsSettings](../resources/insightssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_insightssettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/organization/{organizationId}/settings/contactInsights
Content-Type: application/json
Content-length: 132

{
  "@odata.type": "#microsoft.graph.insightsSettings",
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.insightsSettings",
  "id": "2387c96e-d9f4-e2c8-d164-0393ceab88d0",
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```

