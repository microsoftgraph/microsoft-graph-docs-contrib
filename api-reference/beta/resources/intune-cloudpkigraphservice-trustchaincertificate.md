---
title: "trustChainCertificate resource type"
description: "Complex type that represents a certificate in the trust chain of another certificate issued by a certification authority external to Microsoft Cloud PKI. This complex type is only used when calling the uploadExternallySignedCertificationAuthorityCertificate action."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# trustChainCertificate resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Complex type that represents a certificate in the trust chain of another certificate issued by a certification authority external to Microsoft Cloud PKI. This complex type is only used when calling the uploadExternallySignedCertificationAuthorityCertificate action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The trust chain certificate display name that provides a user-friendly way to identify a certificate in a trust chain.|
|certificate|String|The trust chain certificate in base 64 encoded form.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trustChainCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustChainCertificate",
  "displayName": "String",
  "certificate": "String"
}
```