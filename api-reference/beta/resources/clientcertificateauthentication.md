---
title: "clientCertificateAuthentication resource type"
description: "Represents configuration for fetching a clientCertificateAuthentication in an API call."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# clientCertificateAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A type derived from apiAuthenticationConfigurationBase which is used to represent Pkcs12 based client certificate authentication. The type is used to retrieve the public properties of uploaded certificates.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificateList| [pkcs12CertificateInformation](../resources/pkcs12CertificateInformation.md) collection| The list of certificates uploaded for this API connector.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.clientCertificateAuthentication"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.clientCertificateAuthentication",
  "certificateList": "Collection(microsoft.graph.pkcs12CertificateInformation)",
}
```
