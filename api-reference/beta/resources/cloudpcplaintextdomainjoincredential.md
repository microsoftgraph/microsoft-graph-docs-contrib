---
title: "cloudPcPlainTextDomainJoinCredential resource type"
description: "Represents an Active Directory domain join credential whose user principal name and password are specified directly in a request."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcPlainTextDomainJoinCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Active Directory domain join credential whose user principal name and password are specified directly in a request.

Inherits from [cloudPcDomainJoinCredential](../resources/cloudpcdomainjoincredential.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domainPassword|String|The password associated with the **domainUserPrincipalName**. Required in requests. Not returned in responses.|
|domainUserPrincipalName|String|The user principal name of an Active Directory account that has sufficient permissions to join devices to the domain. The value must be in UPN format, for example, `domainjoin@ad.contoso.com`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPlainTextDomainJoinCredential",
  "baseType": "microsoft.graph.cloudPcDomainJoinCredential"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPlainTextDomainJoinCredential",
  "domainPassword": "String",
  "domainUserPrincipalName": "String"
}
```
