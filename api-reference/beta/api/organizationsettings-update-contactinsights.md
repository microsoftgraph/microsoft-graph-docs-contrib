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
|Delegated (work or school account)|User.Read.All, User.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/settings/contactInsights
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
|isEnabledInOrganization|Boolean|`true` if the specified type of insights are enabled for the organization; `false` if the specified type of insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String|The ID of an Azure AD group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|



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
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
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
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

