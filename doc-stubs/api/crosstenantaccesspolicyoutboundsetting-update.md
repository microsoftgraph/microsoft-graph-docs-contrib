---
title: "Update crossTenantAccessPolicyOutboundSetting"
description: "Update the properties of a crossTenantAccessPolicyOutboundSetting object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update crossTenantAccessPolicyOutboundSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.

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
PATCH /crossTenantAccessPolicyOutboundSetting
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.

The following table shows the properties that are required when you update the [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|isAccessAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|isNativeFederationAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|targets|[Microsoft.DirectoryServices.crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyoutboundsetting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/crossTenantAccessPolicyOutboundSetting
Content-Type: application/json
Content-length: 262

{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyOutboundSetting",
  "isAccessAllowed": "Boolean",
  "isNativeFederationAllowed": "Boolean",
  "targets": [
    {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
    }
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyOutboundSetting",
  "id": "0d8a4fe6-4fe6-0d8a-e64f-8a0de64f8a0d",
  "isAccessAllowed": "Boolean",
  "isNativeFederationAllowed": "Boolean",
  "targets": [
    {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
    }
  ]
}
```

