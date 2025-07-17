---
title: "clientCertificateAuthentication resource type"
description: "Represents the configuration for retrieving a clientCertificateAuthentication."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# clientCertificateAuthentication resource type

Namespace: microsoft.graph

A type derived from apiAuthenticationConfigurationBase that is used to represent a Pkcs12-based client certificate authentication. This is used to retrieve the public properties of uploaded certificates.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificateList| [pkcs12CertificateInformation](../resources/pkcs12CertificateInformation.md) collection| The list of certificates uploaded for this API connector.|

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
