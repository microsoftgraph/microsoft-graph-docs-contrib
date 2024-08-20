---
title: "Create namePronunciationSettings"
description: "Create a new namePronunciationSettings object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create namePronunciationSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [namePronunciationSettings](../resources/namepronunciationsettings.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "peopleadminsettings-post-namepronunciation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-namepronunciation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/people/namePronunciation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [namePronunciationSettings](../resources/namepronunciationsettings.md) object.

You can specify the following properties when creating a **namePronunciationSettings**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [namePronunciationSettings](../resources/namepronunciationsettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_namepronunciationsettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.namePronunciationSettings not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.namePronunciationSettings",
  "isEnabledInOrganization": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.namePronunciationSettings"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.namePronunciationSettings",
  "id": "5a5ec63c-48e0-993a-788a-d4e9fb4f479e",
  "isEnabledInOrganization": "Boolean"
}
```

