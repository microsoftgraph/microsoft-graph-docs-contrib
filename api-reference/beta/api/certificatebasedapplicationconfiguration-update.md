---
title: "Update certificateBasedApplicationConfiguration"
description: "Update the properties of a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update certificateBasedApplicationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object. To update the **trustedCertificateAuthorities** within a certificateBasedApplicationConfiguration object, use the [Update certificateAuthorityAsEntity](../api/certificateauthorityasentity-update.md) operation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|

[!INCLUDE [app-cert-config-apis](../includes/rbac-for-apis/app-cert-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /certificateAuthorityPath/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The friendly name for the configuration.|
|description|String|The description for the configuration.|

## Response

If successful, this method returns a `204 No Content` response code and does not return anything in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_certificatebasedapplicationconfiguration"
}
-->

``` http
PATCH /directory/certificateAuthorities/certificateBasedApplicationConfigurations/d5b0af1c-9376-6b66-16b6-e402965862c1
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateBasedApplicationConfiguration",
  "displayName": "New display name",
  "description": "New description text"
}
```

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
