---
title: "Create crossTenantAccessPolicyOutboundSetting"
description: "Create a new crossTenantAccessPolicyOutboundSetting object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create crossTenantAccessPolicyOutboundSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.crossTenantAccessPolicyOutboundSetting not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object.

The following table shows the properties that are required when you create the [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|isAccessAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|isNativeFederationAllowed|Boolean|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|
|targets|[Microsoft.DirectoryServices.crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|**TODO: Add Description** Inherited from [crossTenantAccessPolicySettingsBase](../resources/crosstenantaccesspolicysettingsbase.md)|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantAccessPolicyOutboundSetting](../resources/crosstenantaccesspolicyoutboundsetting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_crosstenantaccesspolicyoutboundsetting_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.crossTenantAccessPolicyOutboundSetting not found
Content-Type: application/json
Content-length: 274

{
  "@odata.type": "#Microsoft.DirectoryServices.crossTenantAccessPolicyOutboundSetting",
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
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.crossTenantAccessPolicyOutboundSetting"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.crossTenantAccessPolicyOutboundSetting",
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

