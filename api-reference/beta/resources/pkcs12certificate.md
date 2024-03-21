---
title: "pkcs12Certificate resource type"
description: "Represents configuration for uploading a pkcs12Certificate in an API call."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# pkcs12Certificate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration used to **upload** a certificate when using HTTPS client-certificate authentication for calling an API connector endpoint. Client certificate authentication is a mutual certificate-based authentication, where the client provides a client certificate to an API endpoint to prove its identity. Microsoft Entra ID sends the configured certificate of an API connector to the given API endpoint, which then validates the certificate.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|pkcs12Value|String| Specifies the field for sending pfx content. The value should be a base-64 encoded version of the actual certificate content. Required.|
|password|String| Specifies the password for the pfx file. Required. If no password is used, must still provide a value of `""`.|

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.pkcs12Certificate"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.pkcs12Certificate",
  "pkcs12Value": "String",
  "password": "String"
}
```
