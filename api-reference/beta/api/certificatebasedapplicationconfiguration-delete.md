---
title: "Delete certificateBasedApplicationConfiguration"
description: "Delete the properties and relationships of a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete certificateBasedApplicationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the properties and relationships of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

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
DELETE /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_certificatebasedapplicationconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/directory/certificateAuthorities//certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1
```

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
